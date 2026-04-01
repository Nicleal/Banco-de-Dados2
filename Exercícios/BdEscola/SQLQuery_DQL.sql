use bdEscola

SELECT nomeAluno 'Nome', rgAluno 'RG', dataNascimentoAluno FROM tb_Aluno 
WHERE naturalidadeAluno LIKE 'sp'

SELECT nomeAluno 'Nome', rgAluno 'RG' FROM tb_Aluno
WHERE nomeAluno LIKE 'p%'

SELECT nomeCurso FROM tb_Curso
WHERE cargaHorariaCurso > 2000

SELECT nomeAluno 'Nome', rgAluno 'RG' FROM tb_Aluno
WHERE nomeAluno LIKE '%silva%'

SELECT nomeAluno 'Nome', dataNascimentoAluno FROM tb_Aluno
WHERE DATEPART(month,dataNascimentoAluno) = 3 

SELECT codAluno 'Código', dataMatricula FROM tb_Matricula
WHERE DATEPART(month,dataMatricula) = 5 

SELECT codAluno 'Código' FROM tb_Matricula
WHERE codTurma = 1 or codTurma = 2

SELECT codALuno 'Código'  FROM tb_Matricula
WHERE codTurma = 3

SELECT * FROM tb_Aluno

SELECT * FROM tb_Turma
