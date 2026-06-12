use bdEstoque

---1
SELECT p.codProduto,p.descricaoProduto,f.nomeFabricante FROM tbProduto p
INNER JOIN tbFabricante f ON p.codFabricante = f.codFabricante
WHERE p.valorProduto =
(
    SELECT MAX(valorProduto)
    FROM tbProduto
);

---2
SELECT p.descricaoProduto,f.nomeFabricante,p.valorProduto FROM tbProduto p
INNER JOIN tbFabricante f ON p.codFabricante = f.codFabricante
WHERE p.valorProduto >
(
    SELECT AVG(valorProduto)
    FROM tbProduto
);

---3
SELECT DISTINCT c.nomeCliente FROM tbCliente c
INNER JOIN tbVendas v ON c.codCliente = v.codCliente
WHERE v.valorTotalVendas >
(
    SELECT AVG(valorTotalVendas)
    FROM tbVendas
);


---4
SELECT descricaoProduto,valorProduto FROM tbProduto
WHERE valorProduto =
(
    SELECT MAX(valorProduto)
    FROM tbProduto
);

---5
SELECT descricaoProduto, valorProduto FROM tbProduto
WHERE valorProduto =
(
    SELECT MIN(valorProduto)
    FROM tbProduto
);
