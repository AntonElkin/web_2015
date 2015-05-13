<?php
    if (isset($_GET['text']) && $_GET['text']) 
    {
        $text = $_GET['text'];
        echo ("Remove extra blanks :" . ($text));
    }
	else echo ("String is not set");