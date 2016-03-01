<?php
include '../../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$graph = new graph(400,240);
$graph->parameter['title']   = 'Zero-Axis Bar Chart';
//$graph->parameter['x_label'] = 'Day of the Week';
$graph->parameter['y_label'] = 'Offset';

$graph->x_data                 = array('Fri', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri');
$graph->y_data['alpha']        = array(2, -1,  3,  5,  8,  9);
$graph->y_data['beta']         = array(3, 2,   -4,  -3,  1,  5);

//$graph->y_data['beta'] = array(3, 2,   0,  0,  0,  5);

// format for each data set
$graph->y_format['alpha']             =  array('colour' => 'blue', 'bar' => 'fill');
$graph->y_format['beta']              =  array('colour' => 'red',  'bar' => 'fill');

$graph->parameter['shadow']           = 'grayCC'; // set default shadow for all data sets.
$graph->parameter['bar_size']         = 0.9;
$graph->parameter['bar_spacing']      = 30;

$graph->parameter['y_min_left']       = -4;
$graph->parameter['y_max_left']       = 10;
$graph->parameter['y_decimal_left']   = 0;
$graph->parameter['y_axis_gridlines'] = 15;

$graph->parameter['x_axis_angle']      =  60;

$graph->parameter['x_ticks_colour']   = 'none'; // no x ticks (colour = 'none')
$graph->parameter['y_ticks_colour']   = 'none'; // no y ticks (colour = 'none')

$graph->parameter['zero_axis']        = 'black';
$graph->parameter['inner_border_type']= 'y-left'; // only draw left y axis as zero axis already selected above.

$graph->parameter['y_label_rot']     = 60; // rotate y_label text.

$graph->y_order = array('alpha', 'beta');
//$graph->y_order = array('beta');
$graph->draw();
//$graph->draw_stack();


?>
