use bd_ExConsultas


INSERT INTO tb_Curso (nomeCurso, cargaHorariaCurso, valorCurso) VALUES
('Inglês', 2000, '356,00'),
('Alemão', 3000, '478,00');



INSERT INTO tb_Aluno (nomeAluno, dataNascimentoAluno, rgAluno, naturalidadeAluno) VALUES
('Paulo Santos', '2000-10-03 00:00:00', '82.292.122-0', 'SP'),
('Maria da Gloria', '1999-03-10 00:00:00', '45.233.123-0', 'SP'),
('Perla Nogueira Silva', '1998-04-04 00:00:00', '23.533.211-9', 'SP'),
('Gilson Barros Silva', '1995-09-09 00:00:00', '34.221.111-5', 'PE'),
('Mariana Barbosa Santos', '2001-10-10 00:00:00', '54.222.122-9', 'RJ');



INSERT INTO tb_Turma (nomeTurma, horarioTurma, codCurso) VALUES
('11A', '1900-01-01 12:00:00', 1),
('11B', '1900-01-01 18:00:00', 1),
('1AA', '1900-01-01 19:00:00', 2);



INSERT INTO tb_Matricula (dataMatricula, codAluno, codTurma) VALUES
('2015-03-10 00:00:00', 1, 1),
('2014-04-05 00:00:00', 2, 1),
('2012-03-05 00:00:00', 3, 2),
('2016-03-03 00:00:00', 1, 3),
('2015-07-05 00:00:00', 4, 2),
('2015-05-07 00:00:00', 4, 3),
('2015-06-06 00:00:00', 5, 1),
('2015-05-05 00:00:00', 5, 3);