CREATE DATABASE EscolaIdiomas;
GO

-- Tabela Nível
CREATE TABLE tbNivel (
    codNivel INT IDENTITY(1,1) PRIMARY KEY,
    descricaoNivel VARCHAR(100) NOT NULL
);

-- Tabela Período
CREATE TABLE tbPeriodo (
    codPeriodo INT IDENTITY(1,1) PRIMARY KEY,
    descricaoPeriodo VARCHAR(100) NOT NULL
);

-- Tabela Curso
CREATE TABLE tbCurso (
    codCurso INT IDENTITY(1,1) PRIMARY KEY,
    nomeCurso VARCHAR(100) NOT NULL,
    valorCurso DECIMAL(10,2) NOT NULL
);

-- Tabela Turma
CREATE TABLE tbTurma (
    codTurma INT IDENTITY(1,1) PRIMARY KEY,
    descricaoTurma VARCHAR(100) NOT NULL,
    codCurso INT NOT NULL,
    codNivel INT NOT NULL,
    codPeriodo INT NOT NULL,
    horario VARCHAR(50),
    diaDaSemana VARCHAR(30),
    FOREIGN KEY (codCurso) REFERENCES tbCurso(codCurso),
    FOREIGN KEY (codNivel)REFERENCES tbNivel(codNivel),
    FOREIGN KEY (codPeriodo)REFERENCES tbPeriodo(codPeriodo)
);

-- Tabela Aluno
CREATE TABLE tbAluno (
    codAluno INT IDENTITY(1,1) PRIMARY KEY,
    nomeAluno VARCHAR(100) NOT NULL,
    rgAluno VARCHAR(20),
    cpfAluno VARCHAR(14),
    logradouro VARCHAR(150),
    numero VARCHAR(10),
    complemento VARCHAR(100),
    cep VARCHAR(10),
    bairro VARCHAR(100),
    cidade VARCHAR(100),
    dataNascimento DATE
);

-- Tabela Telefone do Aluno
CREATE TABLE tbTelefoneAluno (
    codTelAluno INT IDENTITY(1,1) PRIMARY KEY,
    numTelAluno VARCHAR(20) NOT NULL,
    codAluno INT NOT NULL,
    FOREIGN KEY (codAluno) REFERENCES tbAluno(codAluno)
);

-- Tabela Matrícula
CREATE TABLE tbMatricula (
    codMatricula INT IDENTITY(1,1) PRIMARY KEY,
    dataMatricula DATE NOT NULL,
    codAluno INT NOT NULL,
    codTurma INT NOT NULL,
    FOREIGN KEY (codAluno)REFERENCES tbAluno(codAluno),
    FOREIGN KEY (codTurma)REFERENCES tbTurma(codTurma)
);