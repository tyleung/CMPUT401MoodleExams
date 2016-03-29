<?php
include '../../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$graph = new graph(400,200);
$graph->parameter['title']         = 'Line and Area Chart';
$graph->parameter['x_label']       = 'Day of the Week';
$graph->parameter['y_label_left']  = 'Totals';
$graph->parameter['legend']        = 'top-left';
$graph->parameter['legend_border'] = 'black';
$graph->parameter['legend_offset'] = 4;
$graph->parameter['x_offset']      = 0; // offset of x axis ticks from y_axis. can be set to zero as there are no bars.

$graph->x_data                 = array('Fri', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri');

$graph->y_data['alpha']        = array(6, 7,  5,  5,  8,  9);
$graph->y_data['beta']         = array(2, 2,  4,  3,  4,  5);
$graph->y_data['total']        = array(8, 9 , 9 , 8 , 12, 14);
$graph->y_data['cummulative']  = array(8, 17, 26, 34, 46, 60);

// can add new colours like this.
$graph->colour['new_colour1'] = ImageColorAllocate ($graph->image, 0xFF, 0xFF, 0x66);
$graph->colour['new_colour2'] = ImageColorAllocate ($graph->image, 0xFF, 0xFF, 0xCC);

// format for each data set
$graph->y_format['alpha']        =  array('colour' => 'blue', 'line' => 'line', 'legend' => 'Alpha');
$graph->y_format['beta']         =  array('colour' => 'red',  'line' => 'line', 'legend' => 'Beta');
$graph->y_format['total']        =  array('colour' => 'new_colour1', 'area' => 'fill', 'legend' => 'Unit Total');
$graph->y_format['cummulative']  =  array('colour' => 'new_colour2', 'area' => 'fill', 'legend' => 'Cummulative');

$graph->parameter['shadow'] = 'none'; // set default shadow for all data sets.
$graph->parameter['brush_size'] = 2; // set default shadow for all data sets.

$graph->y_order = array('cummulative', 'total', 'alpha', 'beta'); // order in which to draw data sets.

$graph->parameter['x_axis_angle']      = 60; // rotate x_axis text to 60 degrees.
$graph->parameter['y_min_left']        = 0;
$graph->parameter['y_resolution_left'] = 0;
$graph->parameter['y_decimal_left']    = 0;
$graph->parameter['y_grid']            = 'line';
$graph->parameter['x_grid']            = 'none';  // no x grid
$graph->parameter['y_ticks_colour']    = 'none'; // no y axis ticks
$graph->parameter['inner_border']      = 'none';

// draw it.
$graph->draw();
?>
