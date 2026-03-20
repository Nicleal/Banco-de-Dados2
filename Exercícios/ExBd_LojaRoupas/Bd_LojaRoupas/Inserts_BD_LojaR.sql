use bdLojasRoupas

Select * FROM tbCliente
Select * FROM tbVendedor
Select * FROM tbVendas
Select * FROM tbFabricante
Select * FROM tbFuncionario
Select * FROM tbProduto
Select * FROM tbItensVendas

INSERT INTO tbFabricante (nomeFabricante) VALUES
('Malwee'),
('Marisol'),
('Cia da Malha');

INSERT INTO tbVendedor (nomeVendedor) VALUES
('João Santana'),
('Raquel Torres');

INSERT INTO tbCliente (nomeCliente, idadeCliente) VALUES
('Carlos Silva', 30),
('Ana Souza', 25),
('Pedro Lima', 40),
('Mariana Alves', 35),
('Lucas Pereira', 28);

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario) VALUES
('João Santana', 29, '10/01/23', 2500),
('Raquel Torres', 45, '20/05/23', 3200);

INSERT INTO tbProduto (nomeProduto, precoProduto, dataEntradaProduto, codFuncionario, codFabricante) VALUES
('Camiseta Básica', 50, '01/01/23', 1, 1),
('Calça Jeans', 120, '02/01/21', 1, 1),
('Jaqueta', 200, '03/01/23', 2, 1),
('Vestido Floral', 150, '04/09/23', 1, 2),
('Blusa Feminina', 80, '03/02/21', 2, 2),
('Saia', 90, '04/02/22', 1, 2),
('Moletom', 130, '01/02/21', 2, 3),
('Shorts', 60, '01/02/20', 1, 3),
('Regata', 40, '09/01/22', 2, 3);

INSERT INTO tbVendas (dataVenda, codCliente, codVendedor, totalVendas) VALUES
('2024-02-01', 1, 1, 0),
('2024-02-02', 2, 2, 0),
('2024-02-03', 3, 1, 0),
('2024-02-04', 4, 2, 0),
('2024-02-05', 5, 1, 0);

INSERT INTO tbItensVendas(codVenda, codProduto, quantidadeItensVenda, subTotalItens) VALUES

(1, 1, 2, 100),
(1, 2, 1, 120),
(2, 3, 1, 200),
(2, 4, 1, 150),
(3, 5, 2, 160),
(3, 6, 1, 90),
(4, 7, 1, 130),
(4, 8, 2, 120),
(5, 9, 3, 120),
(5, 1, 1, 50);

-- ----------UPDATE E SELECT-----------

-- Alterar nome do fabricante
UPDATE tbFabricante SET nomeFabricante = 'Turma da Malha' WHERE nomeFabricante = 'Cia da Malha';

-- Alterar valor das vendas do cliente 1 (10% de desconto)
UPDATE tbVendas SET totalVendas = totalVendas * 0.9 WHERE codCliente = 1;

-- Aumentar em 20% o preço dos produtos do fabricante 2
UPDATE tbProduto SET precoProduto = precoProduto * 1.2 WHERE codFabricante = 2;

-- Diminuir a quantidade do produto 3 em 10 (Estoque/ItensVenda)
UPDATE tbItensVendas SET quantidadeItensVenda = quantidadeItensVenda - 10 WHERE codProduto = 3;

-- Remover o segundo item de venda da venda 2
-- (Assumindo que o segundo item inserido para a venda 2 foi o codItensVenda 4)
DELETE FROM tbItensVendas WHERE codItensVendas = 4;

-- Remover todos os itens da venda 3
DELETE FROM tbItensVendas WHERE codVenda = 3;

DELETE FROM tbFabricante WHERE codFabricante = 1;
