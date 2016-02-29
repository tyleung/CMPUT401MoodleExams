<?php
include '../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$line = new graph(400,240);
$line->parameter['title']   = 'Bar, Line, and Point Chart';
$line->parameter['x_label'] = 'Day of the Week';
$line->parameter['y_label_left'] = 'Some Data';

$line->x_data          = array('Friday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday');

$line->y_data['XYZ40'] = array(8.610, 7.940, 3.670, 3.670, 6.940, 8.650);
$line->y_data['ABC10'] = array(1.456, 3.001, 5.145, 2.050, 1.998, 1.678);
$line->y_data['DEF20'] = array(4.896, 4.500, 4.190, 3.050, 2.888, 3.678);


$line->y_format['XYZ40'] =
  array('colour' => 'blue', 'bar' => 'fill', 'shadow_offset' => 3);

$line->y_format['ABC10'] =
  array('colour' => 'red', 'point' => 'diamond', 'point_size' => 12, 'line' => 'brush', 'brush_size' => 3, 'shadow_offset' => 3);

$line->y_format['DEF20'] =
  array('colour' => 'green', 'bar' => 'fill', 'shadow_offset' => 3);

$line->y_order = array('XYZ40', 'DEF20', 'ABC10');

$line->parameter['y_min_left'] = 0;  // start at 0
$line->parameter['y_max_left'] = 10; // and go to 10
$line->parameter['y_decimal_left'] = 2; // 2 decimal places for y axis.
$line->draw();
?>