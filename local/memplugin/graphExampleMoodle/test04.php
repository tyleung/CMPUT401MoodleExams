<?php
include '../../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$graph = new graph(400,240);
$graph->parameter['title']         = 'Overlapping Bar/Line Chart with Legend';
$graph->parameter['x_label']       = 'Day of the Week';
$graph->parameter['y_label_left']  = 'Some Data';
$graph->parameter['legend']        = 'outside-top';
$graph->parameter['legend_border'] = 'black';
$graph->parameter['legend_offset'] = 4;

$graph->x_data          = array('Friday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday');

$graph->y_data['XYZ40'] = array(8.610, 7.940, 3.670, 3.670, 6.940, 8.650);
$graph->y_data['DEF20'] = array(4.896, 4.500, 4.190, 3.450, 2.888, 3.678);
$graph->y_data['ABC10'] = array(1.456, 3.001, 5.145, 3.150, 1.998, 1.678);


$graph->y_format['XYZ40'] =
  array('colour' => 'blue', 'bar' => 'fill', 'shadow_offset' => 2, 'legend' => 'Alpha');

$graph->y_format['ABC10'] =
  array('colour' => 'red', 'line' => 'brush', 'brush_size' => 2, 'shadow_offset' => 4, 'legend' => 'Beta');

$graph->y_format['DEF20'] =
  array('colour' => 'green', 'bar' => 'fill', 'shadow_offset' => 2, 'legend' => 'Gamma');


$graph->parameter['bar_size']    = 1.5; // make size > 1 to get overlap effect
$graph->parameter['bar_spacing'] = 30; // don't forget to increase spacing so that graph doesn't become one big block of colour

$graph->y_order = array('XYZ40', 'DEF20', 'ABC10');

$graph->parameter['x_axis_rot']  = 60; // rotate x_axis text to 60 degrees.
$graph->parameter['x_grid']      = 'none'; // no x grid

$graph->parameter['y_min_left']  = 0;
$graph->parameter['y_max_left']  = 10;
$graph->parameter['y_decimal_left'] = 2;
$graph->draw();
?>
