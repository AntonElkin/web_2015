<?php
    include 'include/common.inc.php';
    $str = GetParamFromGet('str');
    $newstr = RemoveExtraBlanks($str);
    echo ("Remove Extra Blanks :" . $newstr);