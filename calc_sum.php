<?php
    $arg1 = 0;
    if (isset($_GET["arg1"]))
    {
         $arg1= $_GET["arg1"];
    }
    $arg2 = 0;
    if (isset($_GET["arg2"]))
    {
        $arg1= $_GET["arg2"];
    }
    $sum = $arg1 + $arg2;
    echo $sum;
