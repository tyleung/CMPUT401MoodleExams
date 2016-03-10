<?php
require_once '../../config.php';
require_once $CFG->dirroot.'/lib/graphlib.php';

$line = new graph(400,280);
$line->parameter['title']   = "Results";
$line->parameter['x_label'] = "Score (%)";
$line->parameter['y_label_left'] = "Students";
$line->parameter['x_label_angle'] = 0;

$line->x_data = range(0, 100, $_GET['interval']);

$line->y_data['y_data_values'] = unserialize($_GET['data']);
$line->y_format['y_data_values'] = array('colour' => 'blue', 'bar' => 'fill', 'shadow_offset' => 3);
$line->y_order = array('y_data_values');

$line->parameter['y_min_left'] = 0; // lowest percentage.
$line->parameter['y_max_left'] = 10; // get highest percentage occurence.
$line->parameter['x_min'] = 0; // minimum mark
$line->parameter['x_max'] = 100; // maximum mark

$line->draw();

?>
