<?php

session_start();

$login = $_POST['login'];
$password = $_POST['password'];

$banco = new PDO('mysql:host=localhost;dbname=DOUBT','root','');
print "Conexão efetuada com sucesso!<br><br>";
$query = $banco->prepare("SELECT * FROM tbLogin where dsLogin = :l AND dsSenha = :s ");
$query->bindParam('l', $login, PDO::PARAM_STR);
$query->bindParam('s', $password, PDO::PARAM_STR);
$query->execute();
$linhas = $query->rowCount();
    if($linhas > 0) {
        $_SESSION['username'] = $login;
        $_SESSION['password'] = $password;
        header('location:user.php');
    }
    else {
        header('location:login.php');
    }