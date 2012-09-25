# -*- coding: utf-8 -*-
require 'helper'

class TestRegressionChartScatter07 < Test::Unit::TestCase
  def setup
    setup_dir_var
  end

  def teardown
    File.delete(@xlsx) if File.exist?(@xlsx)
  end

  def test_chart_scatter07
    @xlsx = 'chart_scatter07.xlsx'
    workbook    = WriteXLSX.new(@xlsx)
    worksheet   = workbook.add_worksheet
    chart       = workbook.add_chart(
                                     :type     => 'scatter',
                                     :embedded => 1
                                     )

    # For testing, copy the randomly generated axis ids in the target xlsx file.
    chart.instance_variable_set(:@axis_ids,  [63597952, 63616128])
    chart.instance_variable_set(:@axis2_ids, [63617664, 63619456])

    data = [
            [ 27, 33, 44, 12, 1 ],
            [ 6,  8,  6,  4,  2 ],
            [ 20, 10, 30, 50, 40 ],
            [ 0,  27, 23, 30, 40 ]
           ]

    worksheet.write('A1', data)

    chart.add_series(
                     :categories => '=Sheet1!$A$1:$A$5',
                     :values     => '=Sheet1!$B$1:$B$5'
                     )

    chart.add_series(
                     :categories => '=Sheet1!$A$1:$A$5',
                     :values     => '=Sheet1!$C$1:$C$5',
                     :y2_axis    => 1
                     )

    worksheet.insert_chart('E9', chart)

    workbook.close
    compare_xlsx_for_regression(
      File.join(@regression_output, @xlsx),
      @xlsx,
      nil,
      {
        'xl/charts/chart1.xml' => ['<c:pageMargins'],
        'xl/workbook.xml'      => [ '<fileVersion', '<calcPr' ]
      }
     )
  end
end
