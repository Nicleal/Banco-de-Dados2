USE EscolaIdiomas;
GO

INSERT INTO tbNivel (descricaoNivel)
VALUES ('Básico'), ('Intermediário'), ('Avançado');

INSERT INTO tbPeriodo (descricaoPeriodo)
VALUES ('Manhã'), ('Tarde'), ('Noite');

INSERT INTO tbCurso (nomeCurso, valorCurso)
VALUES ('Inglês', 350.00),
       ('Espanhol', 300.00);

INSERT INTO tbTurma
(descricaoTurma, codCurso, codNivel, codPeriodo, horario, diaDaSemana)
VALUES
('ING-BAS-01', 1, 1, 3, '19:00', 'Segunda e Quarta');

INSERT INTO tbAluno
(nomeAluno, rgAluno, cpfAluno, logradouro, numero, complemento, cep, bairro, cidade, dataNascimento)
VALUES
('João Silva', '1234567', '111.222.333-44',
 'Rua A', '100', 'Casa', '12345-000',
 'Centro', 'São Paulo', '2005-05-10');

INSERT INTO tbTelefoneAluno
(numTelAluno, codAluno)
VALUES ('11999999999', 1);

INSERT INTO tbMatricula
(dataMatricula, codAluno, codTurma)
VALUES ('2026-01-15', 1, 1);