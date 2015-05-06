<?php
    include 'include/common.inc.php';
    $str = GetParamFromGet('str');
    $str = Last($str);
	if ($str != "")
	{
	    echo ('Last symbol: ' . $str);
	}
	else 
	{
	    echo ('String is not set');
	}