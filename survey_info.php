<?php
    header("Content-Type: text/plain");
    require_once('include/common.inc.php');
    $email = GetParamFromGet('email', '');
    $path = "data/{$email}.txt";
	
    if ( file_exists($path) )
    {   
        $data = file_get_contents($path);
		echo $data;
    }
	else
	{
	    echo 'email is not defined';
	}
