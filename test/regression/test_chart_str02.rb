# -*- coding: utf-8 -*-
require 'helper'

class TestRegressionChartStr01 < Test::Unit::TestCase
  def setup
    setup_dir_var
  end

  def teardown
    File.delete(@xlsx) if File.exist?(@xlsx)
  end

  def test_chart_str01
    @xlsx = 'chart_str01.xlsx'
    workbook    = WriteXLSX.new(@xlsx)
    worksheet   = workbook.add_worksheet
    chart       = workbook.add_chart(
                                     :type     => 'scatter',
                                     :embedded => 1
                                     )
    # For testing, copy the randomly generated axis ids in the target xlsx file.
    chart.instance_variable_set(:@axis_ids, [41671680, 41669376])

    data = [
            [1, 2, 'Foo', 4,   5],
            [2, 4, 'Bar', 8,  10],
            [3, 6, 'Baz', 12, 15]
           ]

    worksheet.write('A1', data)

    chart.add_series(
                     :categories => '=Sheet1!$A$1:$A$5'
                     :values     => '=Sheet1!$B$1:$B$5',
                     )

    chart.add_series(
                     :categories => '=Sheet1!$A$1:$A$5'
                     :values     => '=Sheet1!$C$1:$C$5',
                     )

    worksheet.insert_chart('E9', chart)

    workbook.close
    compare_xlsx_for_regression(File.join(@regression_output, @xlsx), @xlsx)
  end
end
