<?php
include '../../config.php';
include $CFG->dirroot.'/lib/graphlib.php';

$line = new graph(600,480);
$line->parameter['title']   = 'Class Distribution';
$line->parameter['x_label'] = 'Marks';
$line->parameter['y_label_left'] = 'People';

$line->x_data          = array(0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100);

$line->y_data['XYZ40'] = array(5.610, 15.940, 30.670, 30.670, 40.940, 53.650, 39.561, 40.1635, 10.236, 15.2, 5);

$line->y_format['XYZ40'] =
  array('colour' => 'blue', 'bar' => 'fill', 'shadow_offset' => 3);

$line->y_order = array('XYZ40');

$line->parameter['y_min_left'] = 0;  // start at 0
$line->parameter['y_max_left'] = 56; // and go to 56
$line->parameter['y_decimal_left'] = 0; // 0 decimal places for y axis.
$line->draw();
?>
