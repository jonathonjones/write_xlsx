# -*- coding: utf-8 -*-
require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'test/unit'

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'write_xlsx'

class Writexlsx::Workbook
  #
  # Set the default index for each format. This is mainly used for testing.
  #
  def set_default_xf_indices #:nodoc:
    @formats.each { |format| format.get_xf_index }
  end
end

class Test::Unit::TestCase
  def setup_dir_var
    @test_dir = File.dirname(__FILE__)
    @perl_output  = File.join(@test_dir, 'perl_output')
    @regression_output  = File.join(@test_dir, 'regression', 'xlsx_files')
  end

  def expected_to_array(lines)
    array = []
    lines.each_line do |line|
      str = line.chomp.sub(%r!/>$!, ' />').sub(/^\s+/, '')
      array << str unless str == ''
    end
    array
  end

  def got_to_array(xml_str)
    xml_str.gsub(/[\r\n]/, '').
      gsub(/ +\/>/, ' />').
      gsub(/>[ \t]*</, ">\t<").
      split("\t")
  end

  def vml_str_to_array(vml_str)
    ret = ''
    vml_str.split(/[\r\n]+/).each do |vml|
      str = vml.sub(/^\s+/, '').     # Remove leading whitespace.
        sub(/\s+$/, '').             # Remove trailing whitespace.
        gsub(/\'/, '"').             # Convert VMLs attribute quotes.
        gsub(/([^ ])\/>$/, '\1 />'). # Add space before element end like XML::Writer.
        sub(/"$/, '" ').        # Add space between attributes.
        sub(/>$/, ">\n").       # Add newline after element end.
        gsub(/></, ">\n<")      # Split multiple elements.
      str.chomp! if str == "<x:Anchor>\n" # Put all of Anchor on one line.
      ret += str
    end
    ret.split(/\n/)
  end

  def entrys(xlsx)
    result = []
    Zip::ZipFile.foreach(xlsx) { |entry| result << entry }
    result
  end

  def compare_xlsx_for_regression(exp_filename, got_filename, ignore_members = nil, ignore_elements = nil)
    compare_xlsx(exp_filename, got_filename, ignore_members, ignore_elements, true)
  end

  def compare_xlsx(exp_filename, got_filename, ignore_members = nil, ignore_elements = nil, regression = false)
    # The zip "members" are the files in the XLSX container.
    got_members = entrys(got_filename).sort_by {|member| member.name}
    exp_members = entrys(exp_filename).sort_by {|member| member.name}

    # Ignore some test specific filenames.
    if ignore_members
      got_members.reject! {|member| ignore_members.include?(member.name) }
      exp_members.reject! {|member| ignore_members.include?(member.name) }
    end

    # Check that each XLSX container has the same file members.
    assert_equal(
                 exp_members.collect {|member| member.name},
                 got_members.collect {|member| member.name},
                 "file members differs.")

    # Compare each file in the XLSX containers.
    exp_members.each_index do |i|
      got_xml_str = got_members[i].get_input_stream.read.gsub(%r!(\S)/>!, '\1 />')
      exp_xml_str = exp_members[i].get_input_stream.read.gsub(%r!(\S)/>!, '\1 />')

      # Remove dates and user specific data from the core.xml data.
      if exp_members[i].name == 'docProps/core.xml'
        if regression
          exp_xml_str = exp_xml_str.gsub(/ ?John/, '').gsub(/\d\d\d\d-\d\d-\d\dT\d\d\:\d\d:\d\dZ/,'')
        else
          exp_xml_str = exp_xml_str.gsub(/\d\d\d\d-\d\d-\d\dT\d\d\:\d\d:\d\dZ/,'')
        end
        got_xml_str = got_xml_str.gsub(/\d\d\d\d-\d\d-\d\dT\d\d\:\d\d:\d\dZ/,'')
      end

      if exp_members[i].name =~ %r!xl/worksheets/sheet\d.xml!
        exp_xml_str = exp_xml_str.
          sub(/horizontalDpi="200" /, '').
          sub(/verticalDpi="200" /, '').
          sub(/(<pageSetup.* )r:id="rId1"/, '\1').
          sub(/ +\/>/, ' />')
      end

      if exp_members[i].name =~ /.vml$/
        got_xml = got_to_array(got_xml_str)
        exp_xml = vml_str_to_array(exp_xml_str)
      else
        got_xml = got_to_array(got_xml_str)
        exp_xml = got_to_array(exp_xml_str)
      end

      # Ignore test specific XML elements for defined filenames.
      if ignore_elements && ignore_elements[exp_members[i].name]
        str = ignore_elements[exp_members[i].name].join('|')
        regex = Regexp.new(str)

        got_xml = got_xml.reject { |s| s =~ regex }
        exp_xml = exp_xml.reject { |s| s =~ regex }
      end

      # Reorder the XML elements in the XLSX relationship files.
      case exp_members[i].name
      when '[Content_Types].xml', /.rels$/
        got_xml = sort_rel_file_data(got_xml)
        exp_xml = sort_rel_file_data(exp_xml)
      end

      # Comparison of the XML elements in each file.
      assert_equal(exp_xml, got_xml, "#{exp_members[i].name} differs.")
    end
  end

  def sort_rel_file_data(xml_array)
    header = xml_array.shift
    tail   = xml_array.pop
    xml_array.sort.unshift(header).push(tail)
  end
end
