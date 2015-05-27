<?php
    require 'include/common.inc.php';
		
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
	
  
