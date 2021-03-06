# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "write_xlsx"
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hideo NAKAMURA"]
  s.date = "2012-02-13"
  s.description = "write_xlsx s a gem to create a new file in the Excel 2007+ XLSX format, and you can use the same interface as writeexcel gem.\nThe WriteXLSX supports the following features:\n  * Multiple worksheets\n  * Strings and numbers\n  * Unicode text\n  * Rich string formats\n  * Formulas (including array formats)\n  * cell formatting\n  * Embedded images\n  * Charts\n  * Autofilters\n  * Data validation\n  * Hyperlinks\n  * Defined names\n  * Grouping/Outlines\n  * Cell comments\n  * Panes\n  * Page set-up and printing options\n\nwrite_xlsx uses the same interface as writeexcel gem.\n\ndocumentation is not completed, but writeexcel\u{2019}s documentation will help you. See http://writeexcel.web.fc2.com/\n\nAnd you can find many examples in this gem.\n"
  s.email = "cxn03651@msj.biglobe.ne.jp"
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".document",
    ".gitattributes",
    "Gemfile",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "examples/a_simple.rb",
    "examples/array_formula.rb",
    "examples/autofilter.rb",
    "examples/chart_area.rb",
    "examples/chart_bar.rb",
    "examples/chart_column.rb",
    "examples/chart_line.rb",
    "examples/chart_pie.rb",
    "examples/chart_scatter.rb",
    "examples/chart_stock.rb",
    "examples/colors.rb",
    "examples/comments1.rb",
    "examples/comments2.rb",
    "examples/conditional_format.rb",
    "examples/data_validate.rb",
    "examples/defined_name.rb",
    "examples/demo.rb",
    "examples/diag_border.rb",
    "examples/formats.rb",
    "examples/headers.rb",
    "examples/hide_sheet.rb",
    "examples/hyperlink1.rb",
    "examples/indent.rb",
    "examples/merge1.rb",
    "examples/merge2.rb",
    "examples/merge3.rb",
    "examples/merge4.rb",
    "examples/merge5.rb",
    "examples/merge6.rb",
    "examples/outline.rb",
    "examples/properties.rb",
    "examples/protection.rb",
    "examples/rich_strings.rb",
    "examples/right_to_left.rb",
    "examples/tab_colors.rb",
    "lib/write_xlsx.rb",
    "lib/write_xlsx/chart.rb",
    "lib/write_xlsx/chart/area.rb",
    "lib/write_xlsx/chart/bar.rb",
    "lib/write_xlsx/chart/column.rb",
    "lib/write_xlsx/chart/line.rb",
    "lib/write_xlsx/chart/pie.rb",
    "lib/write_xlsx/chart/scatter.rb",
    "lib/write_xlsx/chart/stock.rb",
    "lib/write_xlsx/chartsheet.rb",
    "lib/write_xlsx/colors.rb",
    "lib/write_xlsx/compatibility.rb",
    "lib/write_xlsx/drawing.rb",
    "lib/write_xlsx/format.rb",
    "lib/write_xlsx/package/app.rb",
    "lib/write_xlsx/package/comments.rb",
    "lib/write_xlsx/package/content_types.rb",
    "lib/write_xlsx/package/core.rb",
    "lib/write_xlsx/package/packager.rb",
    "lib/write_xlsx/package/relationships.rb",
    "lib/write_xlsx/package/shared_strings.rb",
    "lib/write_xlsx/package/styles.rb",
    "lib/write_xlsx/package/theme.rb",
    "lib/write_xlsx/package/vml.rb",
    "lib/write_xlsx/package/xml_writer_simple.rb",
    "lib/write_xlsx/utility.rb",
    "lib/write_xlsx/workbook.rb",
    "lib/write_xlsx/worksheet.rb",
    "lib/write_xlsx/zip_file_utils.rb",
    "test/chart/test_add_series.rb",
    "test/chart/test_process_names.rb",
    "test/chart/test_write_auto.rb",
    "test/chart/test_write_ax_id.rb",
    "test/chart/test_write_ax_pos.rb",
    "test/chart/test_write_chart_space.rb",
    "test/chart/test_write_cross_ax.rb",
    "test/chart/test_write_crosses.rb",
    "test/chart/test_write_format_code.rb",
    "test/chart/test_write_idx.rb",
    "test/chart/test_write_label_align.rb",
    "test/chart/test_write_label_offset.rb",
    "test/chart/test_write_lang.rb",
    "test/chart/test_write_layout.rb",
    "test/chart/test_write_legend.rb",
    "test/chart/test_write_legend_pos.rb",
    "test/chart/test_write_major_gridlines.rb",
    "test/chart/test_write_marker.rb",
    "test/chart/test_write_marker_size.rb",
    "test/chart/test_write_marker_value.rb",
    "test/chart/test_write_num_cache.rb",
    "test/chart/test_write_num_fmt.rb",
    "test/chart/test_write_number_format.rb",
    "test/chart/test_write_order.rb",
    "test/chart/test_write_orientation.rb",
    "test/chart/test_write_page_margins.rb",
    "test/chart/test_write_page_setup.rb",
    "test/chart/test_write_plot_vis_only.rb",
    "test/chart/test_write_pt.rb",
    "test/chart/test_write_pt_count.rb",
    "test/chart/test_write_series_formula.rb",
    "test/chart/test_write_style.rb",
    "test/chart/test_write_symbol.rb",
    "test/chart/test_write_tick_lbl_pos.rb",
    "test/chart/test_write_v.rb",
    "test/drawing/test_drawing_chart_01.rb",
    "test/drawing/test_drawing_image_01.rb",
    "test/helper.rb",
    "test/package/app/test_app01.rb",
    "test/package/app/test_app02.rb",
    "test/package/app/test_app03.rb",
    "test/package/comments/test_write_text_t.rb",
    "test/package/content_types/test_content_types.rb",
    "test/package/content_types/test_write_default.rb",
    "test/package/content_types/test_write_override.rb",
    "test/package/core/test_core01.rb",
    "test/package/core/test_core02.rb",
    "test/package/relationships/test_relationships.rb",
    "test/package/relationships/test_sheet_rels.rb",
    "test/package/shared_strings/test_shared_strings01.rb",
    "test/package/shared_strings/test_shared_strings02.rb",
    "test/package/shared_strings/test_write_si.rb",
    "test/package/shared_strings/test_write_sst.rb",
    "test/package/styles/test_styles_01.rb",
    "test/package/styles/test_styles_02.rb",
    "test/package/styles/test_styles_03.rb",
    "test/package/styles/test_styles_04.rb",
    "test/package/styles/test_styles_05.rb",
    "test/package/styles/test_styles_06.rb",
    "test/package/styles/test_styles_07.rb",
    "test/package/styles/test_styles_08.rb",
    "test/package/styles/test_styles_09.rb",
    "test/package/vml/test_write_anchor.rb",
    "test/package/vml/test_write_auto_fill.rb",
    "test/package/vml/test_write_column.rb",
    "test/package/vml/test_write_div.rb",
    "test/package/vml/test_write_fill.rb",
    "test/package/vml/test_write_idmap.rb",
    "test/package/vml/test_write_move_with_cells.rb",
    "test/package/vml/test_write_path.rb",
    "test/package/vml/test_write_row.rb",
    "test/package/vml/test_write_shadow.rb",
    "test/package/vml/test_write_shapelayout.rb",
    "test/package/vml/test_write_shapetype.rb",
    "test/package/vml/test_write_size_with_cells.rb",
    "test/package/vml/test_write_stroke.rb",
    "test/package/vml/test_write_textbox.rb",
    "test/perl_output/a_simple.xlsx",
    "test/perl_output/array_formula.xlsx",
    "test/perl_output/autofilter.xlsx",
    "test/perl_output/chart_area.xlsx",
    "test/perl_output/chart_bar.xlsx",
    "test/perl_output/chart_column.xlsx",
    "test/perl_output/chart_line.xlsx",
    "test/perl_output/chart_pie.xlsx",
    "test/perl_output/chart_scatter.xlsx",
    "test/perl_output/chart_scatter06.xlsx",
    "test/perl_output/chart_stock.xlsx",
    "test/perl_output/comments1.xlsx",
    "test/perl_output/comments2.xlsx",
    "test/perl_output/conditional_format.xlsx",
    "test/perl_output/data_validate.xlsx",
    "test/perl_output/defined_name.xlsx",
    "test/perl_output/demo.xlsx",
    "test/perl_output/diag_border.xlsx",
    "test/perl_output/fit_to_pages.xlsx",
    "test/perl_output/formats.xlsx",
    "test/perl_output/headers.xlsx",
    "test/perl_output/hide_sheet.xlsx",
    "test/perl_output/hyperlink.xlsx",
    "test/perl_output/indent.xlsx",
    "test/perl_output/merge1.xlsx",
    "test/perl_output/merge2.xlsx",
    "test/perl_output/merge3.xlsx",
    "test/perl_output/merge4.xlsx",
    "test/perl_output/merge5.xlsx",
    "test/perl_output/merge6.xlsx",
    "test/perl_output/outline.xlsx",
    "test/perl_output/print_scale.xlsx",
    "test/perl_output/properties.xlsx",
    "test/perl_output/protection.xlsx",
    "test/perl_output/rich_strings.xlsx",
    "test/perl_output/right_to_left.xlsx",
    "test/perl_output/tab_colors.xlsx",
    "test/test_delete_files.rb",
    "test/test_example_match.rb",
    "test/test_xml_writer_simple.rb",
    "test/workbook/test_get_chart_range.rb",
    "test/workbook/test_sort_defined_names.rb",
    "test/workbook/test_workbook_01.rb",
    "test/workbook/test_workbook_02.rb",
    "test/workbook/test_workbook_03.rb",
    "test/workbook/test_workbook_new.rb",
    "test/workbook/test_write_defined_name.rb",
    "test/workbook/test_write_defined_names.rb",
    "test/worksheet/test_calculate_spans.rb",
    "test/worksheet/test_convert_date_time_01.rb",
    "test/worksheet/test_convert_date_time_02.rb",
    "test/worksheet/test_convert_date_time_03.rb",
    "test/worksheet/test_extract_filter_tokens.rb",
    "test/worksheet/test_parse_filter_expression.rb",
    "test/worksheet/test_position_object.rb",
    "test/worksheet/test_repeat_formula.rb",
    "test/worksheet/test_worksheet_01.rb",
    "test/worksheet/test_worksheet_02.rb",
    "test/worksheet/test_worksheet_03.rb",
    "test/worksheet/test_worksheet_04.rb",
    "test/worksheet/test_write_array_formula_01.rb",
    "test/worksheet/test_write_autofilter.rb",
    "test/worksheet/test_write_brk.rb",
    "test/worksheet/test_write_cell.rb",
    "test/worksheet/test_write_cell_value.rb",
    "test/worksheet/test_write_col_breaks.rb",
    "test/worksheet/test_write_col_info.rb",
    "test/worksheet/test_write_conditional_formatting.rb",
    "test/worksheet/test_write_custom_filter.rb",
    "test/worksheet/test_write_custom_filters.rb",
    "test/worksheet/test_write_data_validation_01.rb",
    "test/worksheet/test_write_data_validation_02.rb",
    "test/worksheet/test_write_dimension.rb",
    "test/worksheet/test_write_ext.rb",
    "test/worksheet/test_write_ext_lst.rb",
    "test/worksheet/test_write_filter.rb",
    "test/worksheet/test_write_filter_column.rb",
    "test/worksheet/test_write_filters.rb",
    "test/worksheet/test_write_header_footer.rb",
    "test/worksheet/test_write_hyperlink.rb",
    "test/worksheet/test_write_hyperlinks.rb",
    "test/worksheet/test_write_legacy_drawing.rb",
    "test/worksheet/test_write_merge_cell.rb",
    "test/worksheet/test_write_merge_cells.rb",
    "test/worksheet/test_write_methods.rb",
    "test/worksheet/test_write_mx_plv.rb",
    "test/worksheet/test_write_page_margins.rb",
    "test/worksheet/test_write_page_set_up_pr.rb",
    "test/worksheet/test_write_page_setup.rb",
    "test/worksheet/test_write_pane.rb",
    "test/worksheet/test_write_phonetic_pr.rb",
    "test/worksheet/test_write_print_options.rb",
    "test/worksheet/test_write_row_breaks.rb",
    "test/worksheet/test_write_row_element.rb",
    "test/worksheet/test_write_selection.rb",
    "test/worksheet/test_write_sheet_calc_pr.rb",
    "test/worksheet/test_write_sheet_data.rb",
    "test/worksheet/test_write_sheet_format_pr.rb",
    "test/worksheet/test_write_sheet_pr.rb",
    "test/worksheet/test_write_sheet_protection.rb",
    "test/worksheet/test_write_sheet_view.rb",
    "test/worksheet/test_write_sheet_view1.rb",
    "test/worksheet/test_write_sheet_view2.rb",
    "test/worksheet/test_write_sheet_view3.rb",
    "test/worksheet/test_write_sheet_view4.rb",
    "test/worksheet/test_write_sheet_view5.rb",
    "test/worksheet/test_write_sheet_view6.rb",
    "test/worksheet/test_write_sheet_view7.rb",
    "test/worksheet/test_write_sheet_view8.rb",
    "test/worksheet/test_write_sheet_view9.rb",
    "test/worksheet/test_write_tab_color.rb",
    "test/worksheet/test_write_worksheet.rb",
    "write_xlsx.gemspec"
  ]
  s.homepage = "http://github.com/cxn03651/write_xlsx"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.10"
  s.summary = "write_xlsx is a gem to create a new file in the Excel 2007+ XLSX format."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rubyzip>, [">= 0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rubyzip>, [">= 0"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rubyzip>, [">= 0"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.4"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

