<?php

    $usuario = 'root';
    $senha = '';
    $bdname = 'cadastro';
    $host = 'localhost';

    try{
        
       $pdo = new PDO("mysql:host=$host;
       bdname=$bdname", $usuario, $senha);

    }catch(PDOException $erro){
        echo $erro->getMessage();
    }



?>