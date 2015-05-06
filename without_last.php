<?php
    include 'include/common.inc.php';
    $str = GetParamFromGet('str');
    $str = WithoutLast($str);
    if ($str != "")
	{
	    echo ("String without last symbol:" . $str);
	}
	else 
	{
	    echo ('String is not set');
	}
