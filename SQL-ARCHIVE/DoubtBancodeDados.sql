CREATE DATABASE DOUBT;
USE DOUBT;

CREATE TABLE tbInstituicao
(
	cdInstituicao int primary key auto_increment,
    nmInstituicao varchar(100),
    nrTel varchar(9),
    dsEndereco varchar(100),
    dsEmail varchar(100)
);

insert into tbInstituicao (nmInstituicao,nrTel,dsEndereco,dsEmail)
Values ('Etec Taboão da Serra','998877887','Rua das Etecs','etectaboao@sp.gov.br');

INSERT INTO `doubt`.`tbInstituicao` (`cdInstituicao`, `nmInstituicao`, `nrTel`, `dsEndereco`, `dsEmail`) VALUES ('2', 'Etec Embu das Artes', '989977557', 'Rua das Etecs 2', 'etecembu@sp.gov.br');

select * from tbInstituicao;

CREATE TABLE tbCursos
(
	cdCurso int primary key auto_increment,
    nmCurso varchar(100),
    cdInstituicao int,
    Foreign key (cdInstituicao) references tbInstituicao (cdInstituicao)
);

INSERT INTO `doubt`.`tbCursos` (`cdCurso`, `nmCurso`, `cdInstituicao`) VALUES ('1', 'Desenvolvimento de Sistemass', '1');
INSERT INTO `doubt`.`tbCursos` (`cdCurso`, `nmCurso`, `cdInstituicao`) VALUES ('2', 'Quimica', '1');
INSERT INTO `doubt`.`tbCursos` (`cdCurso`, `nmCurso`, `cdInstituicao`) VALUES ('3', 'Matematica', '1');
INSERT INTO `doubt`.`tbCursos` (`cdCurso`, `nmCurso`, `cdInstituicao`) VALUES ('4', 'Administração', '2');
INSERT INTO `doubt`.`tbCursos` (`cdCurso`, `nmCurso`, `cdInstituicao`) VALUES ('5', 'Secretáriado', '2');

select * from tbCursos;

CREATE TABLE tbAlunos
(
	cdAluno int primary key auto_increment,
    nmAluno varchar(100),
    dsSenha varchar(100),
    cdInstituicao int,
    cdCurso int,
    foreign key (cdInstituicao) references tbInstituicao (cdInstituicao),
    foreign key (cdCurso) references tbCursos (cdCurso)
);

INSERT INTO `doubt`.`tbAlunos` (`cdAluno`, `nmAluno`, `dsSenha`, `cdInstituicao`, `cdCurso`) VALUES ('1', 'João', '12345', '1', '1');
INSERT INTO `doubt`.`tbAlunos` (`cdAluno`, `nmAluno`, `dsSenha`, `cdInstituicao`, `cdCurso`) VALUES ('2', 'Marta', '741852', '2', '2');
INSERT INTO `doubt`.`tbAlunos` (`cdAluno`, `nmAluno`, `dsSenha`, `cdInstituicao`, `cdCurso`) VALUES ('3', 'Livia', '147258', '1', '1');

Select * from tbAlunos;

Create table tbLogin
(
	cdLogin int primary key auto_increment,
    dsLogin varchar(100),
    dsSenha varchar(100),
    cdAluno int,
    foreign key (cdAluno) References tbAlunos (cdAluno)
);

INSERT INTO `doubt`.`tbLogin` (`cdLogin`, `dsLogin`, `dsSenha`, `cdAluno`) VALUES ('1', 'João', '12345', '1');
INSERT INTO `doubt`.`tbLogin` (`cdLogin`, `dsLogin`, `dsSenha`, `cdAluno`) VALUES ('2', 'Marta', '741852', '2');
INSERT INTO `doubt`.`tbLogin` (`cdLogin`, `dsLogin`, `dsSenha`, `cdAluno`) VALUES ('3', 'Livia', '147258', '3');


select * from tbLogin;

select dsLogin, dsSenha from tbLogin where dsLogin = 'João' and dsSenha = '12345';

create view Login
as
select * from tbLogin where dsLogin = 'João' and dsSenha = '12345';

select * from Login;