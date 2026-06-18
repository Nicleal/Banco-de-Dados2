USE EscolaIdiomas
GO

-- A)
SELECT nomeCurso, valorCurso
FROM tbCurso
WHERE valorCurso <
(
    SELECT AVG(valorCurso)
    FROM tbCurso
);

-- B)
SELECT nomeAluno, rgAluno
FROM tbAluno
WHERE dataNascimento =
(
    SELECT MAX(dataNascimento)
    FROM tbAluno
);

-- C)
SELECT nomeAluno
FROM tbAluno
WHERE dataNascimento =
(
    SELECT MIN(dataNascimento)
    FROM tbAluno
);

-- D)
SELECT nomeCurso, valorCurso
FROM tbCurso
WHERE valorCurso =
(
    SELECT MAX(valorCurso)
    FROM tbCurso
);

-- E)
SELECT a.nomeAluno, c.nomeCurso
FROM tbAluno a
INNER JOIN tbMatricula m
ON a.codAluno = m.codAluno
INNER JOIN tbTurma t
ON m.codTurma = t.codTurma
INNER JOIN tbCurso c
ON t.codCurso = c.codCurso
WHERE m.dataMatricula =
(
    SELECT MAX(dataMatricula)
    FROM tbMatricula
);

-- F)
SELECT a.nomeAluno
FROM tbAluno a
INNER JOIN tbMatricula m
ON a.codAluno = m.codAluno
WHERE m.dataMatricula =
(
    SELECT MIN(dataMatricula)
    FROM tbMatricula
);

-- G)
SELECT a.nomeAluno,
       a.rgAluno,
       a.dataNascimento
FROM tbAluno a
INNER JOIN tbMatricula m
ON a.codAluno = m.codAluno
INNER JOIN tbTurma t
ON m.codTurma = t.codTurma
INNER JOIN tbCurso c
ON t.codCurso = c.codCurso
WHERE c.nomeCurso = 'Inglês';
