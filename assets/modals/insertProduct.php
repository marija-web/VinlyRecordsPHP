<?php
     include "functions.php";

     header('Content-Type: application/json');
     if($_SERVER['REQUEST_METHOD']=='POST'){
        $nameProduct=$_POST['nameProduct'];
        $priceProduct=$_POST['priceProduct'];
        $delivery=$_POST['delivery'];
        $catValue=$_POST['catValue'];
        $artistValue=$_POST['artistValue'];
        $filePicture=$_FILES['filePicture'];
        $tmpName=$filePicture['tmp_name'];
        $type=$filePicture['type'];
        $name=$filePicture['name'];
        $src="../img/gallery/";
        $typeNew=explode("/", $type);
        $msg="";
        $code=200;
        $valid=true;

        if($typeNew[1]!="png" && $typeNew[1]!="jpg" && $typeNew[1]!="jpeg"){
            $valid=false;
        }

        if($nameProduct=="" || $catValue=="0" || $artistValue=="0"){
            $valid=false;     
        }

        if($valid){
            $insertProduct=insertProduct($nameProduct, $priceProduct, $delivery, $catValue, $artistValue, $name);
        }

        if($insertProduct){
            $result=move_uploaded_file($tmpName, $src.$name);
            if($result){
                $msg="You have successfully inserted one row in table products!";
                $code=201;
            }
        }
        else{
            $msg="Server error.";
            $code=500;
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