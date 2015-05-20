<?php
    require 'include/common.inc.php';
	
    function GetSurveyFromRequest()
    {
	$data = array
	(
	    'first_name' => GetParamFromGet('first_name', ''),
	    'last_name' => GetParamFromGet('last_name', ''),
	    'email' => GetParamFromGet('email', ''),
	    'age' => GetParamFromGet('age', '')
	);
	return $data;
    }
	
    $data = GetSurveyFromRequest();
	$email = $data['email'];
	
    $filePath = GetFilePath($email);
    if (file_exists($filePath))
    {
        echo 'EMail is use';
    }
	else 
    {
	    $result = DataInFile($filePath, $data);
	}
	
    function GetFilePath($email)
    {
        $filePath = "data/{$email}.txt";
        return $filePath;
    }
  
    function DataInFile($filePath, $data)
    {
        foreach ($data as $key => $value)
        {
            file_put_contents($filePath, "{$key}:{$value}\n", FILE_APPEND);
        }
        echo ('Data are added in: ' . $filePath);
    }