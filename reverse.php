<?php
    include 'include/common.inc.php';
    $str = GetParamFromGet('str');
    $str = Revers($str);
	if ($str != "")
	{
        echo ("Revers string: " . $str);
	}
	else 
	{
	    echo ('String is not set');
	}
