<?php
    function Last($str)
    {
        $str = substr($str, strlen($str) - 1, 1);
        return $str;
    }
    function WithoutLast($str)
    {
        $str = substr($str, 0, strlen($str) - 1);
        return $str;
    }
    function Revers($str)
    {
        $str = strrev($str);
        return $str;
    }
    function RemoveExtraBlanks($str)
    {
        $str = trim($str);
        while (strpos($str, '  ') !== false)
        {
            $str = str_replace('  ', ' ', $str);
        }
        return $str;
    }
