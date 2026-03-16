use bdEstoque

insert into tbCliente (nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNascCliente)
values ('Armando Jos� Santana','12345678900','armandojsantana@outlook.com','m','21/02/1961'),
	   ('Sheila Carvalho Leal', '45678909823','scarvalho@ig.com.br','f','13/09/1978'),
	   ('Carlos Henrique Souza','76598278299','cherinque@ig.com.br','m','08/09/1981'),
	   ('Maria Aparecida Souza', '87365309899','mapdasouza@outlook.com','f','07/07/1962'),
	   ('Adriana Nogueira Silva','76354309388','drica1977@ig.com.br','f','09/04/1977'),
	   ('Paulo Henrique Silva', '87390123111','phsilva80@hotmail.com','m', '02/02/1987');
select*from tbCliente

insert into tbVendas (dataVenda,valorTotalVendas)
values ('01/02/2014','4500,00'),
	   ('03/02/2014','3400,00'),
	   ('10/02/2014','2100,00'),
	   ('15/02/2014','2700,00'),
	   ('17/03/2014','560,00'),
	   ('09/04/2014','1200,00'),
	   ('07/05/2014','3500,00'),
	   ('07/05/2014','3400,00'),
	   ('05/05/2014','4000,00');
select*from tbVendas

insert into tbFabricante (nomeFabricante)
values ('Unilever'),
       ('P&G'),
	   ('Bunge');
select*from tbFabricante

insert into tbFornecedor(nomeFornecedor,contatoFornecedor)
values ('Atacadão','Carlos Santos'),
       ('Assai','Maria Stella'),
	   ('Roldão','Paulo César');
select*from tbFornecedor

insert into tbProduto(descricaoProduto,valorProduto,quantidadeProduto)
values ('Amaciante Downy','5,76','1500'),
       ('Amaciante Comfort','5,45','2300'),
	   ('Sabão em pó OMO','5,99','1280'),
	   ('Margarina Qualy','4,76','2500'),
       ('Salsicha Hot Dog Sadia','6,78','2900'),
	   ('Mortadela Perdigão','2,50','1200'),
	   ('Hamburger Sadia','9,89','1600'),
       ('Fralda Pampers','36,00','340'),
	   ('Xampu Seda','5,89','800'),
	   ('Condicionador Seda','6,50','700');
select*from tbProduto

insert into tbItensVendas (quantidadeItensVenda,subTotalItensVenda)
values ('200','1500,00'),
       ('300','3000,00'),
	   ('120','1400,00'),
	   ('200','1000,00'),
	   ('300','1000,00'),
       ('130','2100,00'),
	   ('200','1000,00'),
	   ('120','700'),
       ('450','560'),
	   ('200','600'),
	   ('200','600');
select*from tbItensVendas	   
