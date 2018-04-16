<?php

$file = '../img/image.jpeg';
$type = 'image/jpeg';
header('Content-Type:'.$type);
header('Content-Length: ' . filesize($file));
readfile($file);

include_once '../../app/route/process.php';

$visitor->record($_GET['url']);
