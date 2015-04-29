<?php
    include 'include/common.inc.php';
    $str = GetParamFromGet('str');
    $str = Revers($str);
    echo ("Revers string: " . {$str});
