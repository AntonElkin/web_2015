<?php
    include 'include/common.inc.php';
    $str = GetParamFromGet('str');
    $str = Last($str);
    echo ("Last symbol :" . {$str});
