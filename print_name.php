<?php
    header('Content-Type: text/plain');
    
    $nameValue = '';
    if (isset($_GET['name']))    
    {
        $nameValue= $_GET['name'];
    }
    echo "Hello, Dear ".$_GET['name']."!";
