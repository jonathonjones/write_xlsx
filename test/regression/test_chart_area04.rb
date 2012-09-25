# -*- coding: utf-8 -*-
require 'helper'

class TestRegressionChartArea04 < Test::Unit::TestCase
  def setup
    setup_dir_var
  end

  def teardown
    File.delete(@xlsx) if File.exist?(@xlsx)
  end

  def test_chart_area04
    @xlsx = 'chart_area04.xlsx'
    workbook  = WriteXLSX.new(@xlsx)
    worksheet = workbook.add_worksheet
    chart     = workbook.add_chart(:type => 'area', :embedded => 1)

    # For testing, copy the randomly generated axis ids in the target xlsx file.
    chart.instance_variable_set(:@axis_ids, [63591168, 63592704])

    data = [
            [1, 2, 3,  4, 5],
            [6, 8, 6,  4, 2]
           ]

    worksheet.write('A1', data)

    chart.add_series(:values => '=Sheet1!$A$1:$A$5')
    chart.add_series(:values => '=Sheet1!$B$1:$B$5', :y2_axis => 1)

    worksheet.insert_chart('E9', chart)

    workbook.close
    compare_xlsx_for_regression(
      File.join(@regression_output, @xlsx),
      @xlsx,
      {},
      {
       'xl/charts/chart1.xml' => ['<c:pageMargins'],
       'xl/workbook.xml'      => [ '<fileVersion', '<calcPr' ],
      }
    )
  end
end
