<?php

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
 
    $nome = ($_REQUEST['nome']);
    $email = ($_REQUEST['email']);
    $mensagem = ($_REQUEST['nome']);

    echo "<h1>Cadastro efetuado com sucesso!</h1>";

} else {
   
    echo "<p>Falha ao enviar formulário, tente novamente.</p>";
}

?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sistema de Tarefasss</title>
</head>
<body>
<style>
    form {
 
    }
</style>    
</body>
</html>
