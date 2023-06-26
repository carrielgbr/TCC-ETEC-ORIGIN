<?php

session_start();


    $banco = new PDO('mysql:host=localhost;dbname=DOUBT','root','');
        print "Conexão efetuada com sucesso!<br><br>";
    $query = $banco->prepare("SELECT * FROM tbAlunos");
    $query->execute();
    $data = $query->fetchAll(PDO::FETCH_ASSOC);
        echo '<pre>';
            print_r($data);
        echo '</pre>';

    $query = $banco->prepare("INSERT INTO tbAlunos (nmAluno, dsSenha) values(:username, :senha)");
    $query->bindParam('username', $username, PDO::PARAM_STR);
    $query->bindParam('senha', $password, PDO::PARAM_STR);
        if($query->execute()) {
          'Gravou';
        } else {
          'Não gravou';
        }