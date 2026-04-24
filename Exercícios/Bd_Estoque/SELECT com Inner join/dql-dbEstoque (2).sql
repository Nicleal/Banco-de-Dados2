USE dbEstoque
GO

-- a) Listar descri��o de produto ao lado do nome do fabricante
SELECT descricaoProduto Produto, nomeFabricante Fabricante FROM tbProduto
	INNER JOIN tbFabricante ON tbProduto.codFabricante = tbFabricante.codFabricante

--b) Listar descri��o de produto ao lado do nome do fornecedor
SELECT descricaoProduto Produto, nomeFornecedor Fornecedor FROM tbProduto
	INNER JOIN tbFornecedor ON tbProduto.codFornecedor = tbFornecedor.codFornecedor

--c) Listar a soma das qtd de produtos agrupadas pelo nome do fabricante
SELECT nomeFabricante, SUM(quantidadeProduto) 'Total de Produtos' FROM tbFabricante
	INNER JOIN tbProduto ON tbFabricante.codFabricante = tbProduto.codFabricante
		GROUP BY nomeFabricante

--d) Listar o total das vendas ao lado do nome do cliente
SELECT nomeCliente Cliente, SUM(valorTotalVenda) 'Total de Vendas' FROM tbCliente
	INNER JOIN tbVenda ON tbCliente.codCliente = tbVenda.codCliente
		GROUP BY nomeCliente

--e) Listar a m�dia dos pre�os dos produtos agrupados pelo nome do fornecedor;
SELECT nomeFornecedor, AVG(valorProduto) 'M�dia de pre�o' FROM tbFornecedor
	INNER JOIN tbProduto ON tbFornecedor.codFornecedor = tbProduto.codFornecedor
		GROUP BY nomeFornecedor

--f) Listar todas a soma das vendas agrupadas pelo nome do cliente em ordem alfab�tica;
SELECT nomeCliente Cliente, SUM(valorTotalVenda) 'Total de Vendas' FROM tbCliente
	INNER JOIN tbVenda ON tbCliente.codCliente = tbVenda.codCliente
		GROUP BY nomeCliente
			ORDER BY nomeCliente

--g) Listar a soma dos pre�os dos produtos agrupados pelo nome do fabricante;
SELECT nomeFabricante, SUM(valorProduto) 'Soma dos pre�os' FROM tbFabricante
	INNER JOIN tbProduto ON tbFabricante.codFabricante = tbProduto.codFabricante
		GROUP BY nomeFabricante

--h) Listar a m�dia dos pre�os dos produtos agrupados pelo nome do fornecedor
SELECT nomeFornecedor, AVG(valorProduto) 'M�dia de pre�o' FROM tbFornecedor
	INNER JOIN tbProduto ON tbFornecedor.codFornecedor = tbProduto.codFornecedor
		GROUP BY nomeFornecedor

--i) Listar a soma das vendas agrupadas pelo nome do produto
SELECT descricaoProduto Produto, SUM(subTotalItensVenda) 'Total de Vendas' FROM tbItensVenda
	INNER JOIN tbProduto ON tbItensVenda.codProduto = tbProduto.codProduto
		GROUP BY descricaoProduto
--j) Listar a soma das vendas pelo nome do cliente somente das vendas realizadas em fevereiro de 2014
SELECT nomeCliente Cliente, SUM(valorTotalVenda) 'Total de Vendas' FROM tbCliente
	INNER JOIN tbVenda ON tbCliente.codCliente = tbVenda.codCliente
		WHERE dataVenda >= '2014-02-01' AND dataVenda < '2014-03-01'
			GROUP BY nomeCliente