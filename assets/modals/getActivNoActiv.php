<?php
     include "functions.php";

     header('Content-Type: application/json');
     if(isset($_GET['button'])){

        $msg="";
        $code=200;
        
        $getSurvey=getAllFromTabel("survey");
        if($getSurvey){
           $msg=$getSurvey;
           $code=200;
        }
    http_response_code($code);
    echo json_encode($msg);
    }
    else{
        header("location: 404Page.php");
        $code=404;
        $msg="Page not found.";
    }
    
?>