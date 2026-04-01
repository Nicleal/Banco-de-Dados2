create database bdEscola
go

DROP TABLE tb_Aluno

use bdEscola

create table tb_Aluno(
codAluno int PRIMARY KEY IDENTITY(1,1),
nomeAluno varchar(50),
dataNascimentoAluno varchar (20),
rgAluno varchar (15),
naturalidadeAluno varchar (200)
);

create table tb_Curso(
codCurso int PRIMARY KEY IDENTITY(1,1),
nomeCurso varchar (50),
cargaHorariaCurso varchar (15),
valorCurso varchar (10)
);

create table tb_Turma(
codTurma int PRIMARY KEY IDENTITY(1,1),
nomeTurma varchar (50),
horarioTurma varchar(20),
codCurso int FOREIGN KEY references tb_Curso (codCurso)
);

create table tb_Matricula(
codMatricula int PRIMARY KEY IDENTITY(1,1),
dataMatricula varchar (20),
codAluno int FOREIGN KEY references tb_Aluno (codAluno),
codTurma int FOREIGN KEY references tb_Turma (codTurma)
);
