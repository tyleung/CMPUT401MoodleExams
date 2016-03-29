<?php
include '../../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$graph = new graph(400,240);

$graph->parameter['title']             = 'Stacked Bar Chart. Right Hand Y Axis.';
//$graph->parameter['x_label']           = 'Day of the Week';
$graph->parameter['y_label_right']     = 'Units';
$graph->parameter['y_decimal_right']   =  2;
$graph->parameter['x_grid']            = 'none';
$graph->parameter['x_axis_angle']      =  60;
$graph->parameter['y_min_right']       =  0;
$graph->parameter['y_max_right']       =  10;
$graph->parameter['y_axis_gridlines']  =  11;
$graph->parameter['y_axis_text_right'] =  2;  //print a tick every 2nd grid line
$graph->parameter['shadow']            = 'none';
$graph->parameter['legend']            = 'outside-right';
$graph->parameter['legend_offset']     =  5;
$graph->parameter['legend_border']     = 'black';
$graph->parameter['inner_padding']     = 6;

$graph->y_format['alpha'] = array('colour' => 'blue', 'bar' => 'fill', 'legend' => 'Product A', 'bar_size' => 0.4, 'y_axis' =>'right');
$graph->y_format['beta']  = array('colour' => 'red',  'bar' => 'fill', 'legend' => 'Product B', 'bar_size' => 0.2, 'y_axis' =>'right');

$graph->x_data          = array('Fri', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri');
$graph->y_data['alpha'] = array(6, 7,  5,  4,  8,  9);
$graph->y_data['beta']  = array(2, 2,  4,  7,  4,  5);

$graph->y_order = array('alpha', 'beta');

$graph->draw_stack();
?>
