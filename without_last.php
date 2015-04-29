<?php
    include 'include/common.inc.php';
    $str = GetParamFromGet('str');
    $str = WithoutLast($str);
    echo ("string WithoutLast :"$str});
