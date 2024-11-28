<?php

include_once('templates/topo.php'); 
include_once('templates/menu.php');


if (isset($_GET['page'])) {

    $page = $_GET['page'];
    include_once($page . '.php');

} else {

    include_once('conteudo.php');
}

include_once('templates/rodape.php'); 

?>
    
    
    <!DOCTYPE html>
<html lang="pt-br">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Sistema de Tarefasss</title>
   <style>
   
   
   p {
      color: #ffffff;

      text-align: center;

}

   footer {

background-color: #000000;

color: #ffffff;

padding: 10px;

text-align: center;

position: fixed;

bottom: 0;

width: 100%;

}
header {

background-color: #000000;

color: #fff;

padding: 20px;

text-align: center;

}

h1 {

color: #ffffff;

text-align: center;

}

body {

font-family: Arial, sans-serif;

margin: 0;

padding: 0;

background-color: #adadad;

}


   </style>
</head>
<body>


<footer>

<h3><p>Rodapé - ©️ 2024</p></h3>

</footer>
</body>
</html>