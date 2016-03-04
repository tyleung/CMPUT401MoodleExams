<?php
include '../../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$graph = new graph(400,250);
$graph->parameter['title']         = 'Line/Area Chart & Double Y Axis';
$graph->parameter['x_label']       = '';
$graph->parameter['y_label_left']  = 'Items';
$graph->parameter['y_label_right'] = 'Totals';
$graph->parameter['legend']        = 'outside-right';
$graph->parameter['legend_border'] = 'black';
$graph->parameter['legend_offset'] = 4;

$graph->x_data                 = array('Fri', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri');

$graph->y_data['alpha']        = array(6, 7,  5,  5,  8,  9);
$graph->y_data['beta']         = array(2, 2,  4,  3,  4,  5);
$graph->y_data['total']        = array(8, 9 , 9 , 8 , 12, 14);
$graph->y_data['cummulative']  = array(8, 17, 26, 34, 46, 60);

// you can add new custom colours like this.
$graph->colour['new_colour1'] = ImageColorAllocate ($graph->image, 0x66, 0xFF, 0x66);
$graph->colour['new_colour2'] = ImageColorAllocate ($graph->image, 0xCC, 0xFF, 0xCC);

// format for each data set
$graph->y_format['alpha']  =
  array('colour' => 'blue', 'line' => 'brush', 'legend' => 'Item Alpha', 'y_axis' => 'left');

$graph->y_format['beta'] =
  array('colour' => 'red',  'line' => 'brush', 'legend' => 'Item Beta', 'y_axis' => 'left');

$graph->y_format['total']  =
  array('colour' => 'new_colour1', 'area' => 'fill', 'legend' => 'Unit Total', 'y_axis' => 'right');

$graph->y_format['cummulative'] =
  array('colour' => 'new_colour2', 'area' => 'fill', 'legend' => 'Cummulative Total', 'y_axis' => 'right');

$graph->parameter['x_offset']            = 0;  // offset of x axis ticks from y_axis. can be set to zero as no bars.
$graph->parameter['x_axis_angle']        = 0;
$graph->parameter['y_max_left']          = 10; // left axis goes up to 10
$graph->parameter['y_max_right']         = 60; // right axis goes up to 60
$graph->parameter['y_resolution_left']   = 0;  // no decimal places
$graph->parameter['y_decimal_left']      = 0;  // ...
$graph->parameter['y_axis_text_left']    = 2;  // print every other tick on left y axis
$graph->parameter['y_axis_text_right']   = 2;  // print every other tick on right y axis
$graph->parameter['y_axis_gridlines']    = 11;
$graph->parameter['y_grid']              = 'line';
$graph->parameter['x_grid']              = 'none';  // no x grid
$graph->parameter['y_ticks_colour']      = 'none'; // no y axis ticks
$graph->parameter['inner_border_type']   = 'x-axis';
$graph->parameter['brush_size']          = 2;
$graph->parameter['shadow']              = 'none';

$graph->y_order = array('cummulative', 'total', 'alpha', 'beta'); // order in which to draw data sets.

// draw it.
$graph->draw();
?>
