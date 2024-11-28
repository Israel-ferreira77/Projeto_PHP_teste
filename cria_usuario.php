<?php

    require("connector.php");

    if(isset($_POST)){


        $nome = $_POST['nome'];
        $sobrenome = $_POST['sobrenome'];

        $query = "INSERT INTO login (nome, sobrenome) VALUES ('$nome', '$sobrenome')";


        header("Location: index.php?criado=sucesso");
    }
?>