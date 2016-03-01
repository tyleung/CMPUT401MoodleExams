<?php
include '../../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$graph = new graph(400,240);
$graph->parameter['title']        = 'Numeric X Axis with Zero-Axis';
$graph->parameter['x_label']      = 'Some Value';
$graph->parameter['y_label_left'] = 'Offset';

$graph->x_data                 = array(-4,  -1,  4,  6,  9,  14);
$graph->y_data['alpha']        = array(2, -1,  3,  5,  8,  9);
$graph->y_data['beta']         = array(3, 2,  -4, -3,  1,  5);

//$graph->y_data['beta'] = array(3, 2,   0,  0,  0,  5);

// format for each data set
$graph->y_format['alpha']             =  array('colour' => 'blue', 'line' => 'brush');
$graph->y_format['beta']              =  array('colour' => 'red',  'line' => 'brush');

$graph->parameter['shadow']           = 'grayCC'; // set default shadow for all data sets.
$graph->parameter['bar_size']         = 0.9;
$graph->parameter['bar_spacing']      = 30;

$graph->parameter['y_min_left']       = -4;
$graph->parameter['y_max_left']       = 10;
$graph->parameter['y_decimal_left']   = 0;
$graph->parameter['y_axis_gridlines'] = 15;

$graph->parameter['x_axis_gridlines'] = 19;
$graph->parameter['x_offset']         = 0;

$graph->parameter['x_axis_angle']     =  0;

$graph->parameter['x_axis_text']      =  2; // print every other tick on x axis
$graph->parameter['y_axis_text_left'] =  2; // print every other tick on left y axis
$graph->parameter['tick_length']      = -2; // tick is drawn pointing outside the plotting area
$graph->parameter['x_ticks_colour']   = 'none'; // no x ticks (colour = 'none')

$graph->parameter['zero_axis']        = 'black';
$graph->parameter['inner_border_type']= 'y-left'; // only draw left y axis as zero axis already selected above.

$graph->parameter['y_label_angle']     = 90; // rotate y_label text.

$graph->y_order = array('alpha', 'beta');
//$graph->y_order = array('beta');
$graph->draw();
//$graph->draw_stack();


?>
