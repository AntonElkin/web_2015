<?php
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
