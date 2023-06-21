<?php


try{
    $pdo = new PDO("mysql:host=localhost;dbname=DOUBT","root","");
    //no meu codigo só funcionou com o root definido
}
catch(PDOException $e){
        echo "Erro com o banco de dados: ".$e->getMessage();

}catch(Exception $e){
        echo "Erro generico: ".$e->getMessage();
}


/*$res = $pdo->prepare("INSERT INTO tbAlunos (cdAluno, nmAluno, dsSenha, cdInstituicao, cdCurso) VALUES (:cdAluno, :nmAluno, :dsSenha, :cdInst, :cdCurso)");
$res->bindValue(":cdAluno","5");
$res->bindValue(":nmAluno","irineu");
$res->bindValue(":dsSenha","123");
$res->bindValue(":cdInst","3");
$res->bindValue(":cdCurso","1");
$res->execute();*/

$pdo->query("INSERT INTO tbAlunos (cdAluno, nmAluno, dsSenha, cdInstituicao, cdCurso) 
VALUES ('6', 'roberto', 'robertinho', '2', '2')");