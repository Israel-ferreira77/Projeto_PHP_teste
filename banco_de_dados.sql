//Conexão com o Banco de Dados (mysqli)

<?php
$servername = "localhost"; // Endereço do servidor (padrão é localhost)
$username = "root";        // Nome de usuário do MySQL
$password = "";            // Senha do MySQL (vazio no caso do XAMPP/localhost)
$dbname = "meu_banco";     // Nome do banco de dados

// Criação da conexão

$conn = new mysqli($servername, $username, $password);

// Verificar conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}
echo "Conectado com sucesso ao servidor MySQL";

// Criar o banco de dados
$sql = "CREATE DATABASE IF NOT EXISTS $dbname";
if ($conn->query($sql) === TRUE) {
    echo "Banco de dados criado com sucesso ou já existe!";
} else {
    echo "Erro ao criar banco de dados: " . $conn->error;
}

$conn->close();
?>

------------------------------------------------------------------------------------------------------

//Criar Tabelas

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "meu_banco";  // Nome do banco de dados que foi criado

// Criando a conexão

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// SQL para criar a tabela
$sql = "CREATE TABLE IF NOT EXISTS usuarios (
    id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    data_registro TIMESTAMP
)";

if ($conn->query($sql) === TRUE) {
    echo "Tabela 'usuarios' criada com sucesso!";
} else {
    echo "Erro ao criar tabela: " . $conn->error;
}

$conn->close();
?>

------------------------------------------------------------------------------------------------------

//Inserir Dados na Tabela

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "meu_banco";

// Criando a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// SQL para inserir dados na tabela
$sql = "INSERT INTO usuarios (nome, email)
VALUES ('João Silva', 'joao.silva@email.com'), 
       ('Maria Oliveira', 'maria.oliveira@email.com')";

if ($conn->query($sql) === TRUE) {
    echo "Novos registros inseridos com sucesso!";
} else {
    echo "Erro ao inserir dados: " . $conn->error;
}

$conn->close();
?>

------------------------------------------------------------------------------------------------

//Recuperar Dados da Tabela

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "meu_banco";

// Criando a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar a conexão
if ($conn->connect_error) {
    die("Falha na conexão: " . $conn->connect_error);
}

// SQL para selecionar todos os usuários
$sql = "SELECT id, nome, email FROM usuarios";
$result = $conn->query($sql);

// Verificar se há resultados
if ($result->num_rows > 0) {
    // Exibir cada linha de dados
    while($row = $result->fetch_assoc()) {
        echo "id: " . $row["id"]. " - Nome: " . $row["nome"]. " - Email: " . $row["email"]. "<br>";
    }
} else {
    echo "Nenhum resultado encontrado!";
}

$conn->close();
?>

------------------------------------------------------------------------------------------------------