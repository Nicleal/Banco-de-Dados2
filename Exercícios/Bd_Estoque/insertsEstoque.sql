use bdEstoque

insert into tbCliente (nomeCliente,cpfCliente,emailCliente,sexoCliente,dataNascCliente)
values ('Armando José Santana','12345678900','armandojsantana@outlook.com','m','21/02/1961'),
	   ('Sheila Carvalho Leal', '45678909823','scarvalho@ig.com.br','f','13/09/1978'),
	   ('Carlos Henrique Souza','76598278299','cherinque@ig.com.br','m','08/09/1981'),
	   ('Maria Aparecida Souza', '87365309899','mapdasouza@outlook.com','f','07/07/1962'),
	   ('Adriana Nogueira Silva','76354309388','drica1977@ig.com.br','f','09/04/1977'),
	   ('Paulo Henrique Silva', '87390123111','phsilva80@hotmail.com','m', '02/02/1987');
select*from tbCliente

insert into tbVendas (dataVenda,valorTotalVenda)
values ('01/02/2014','4500,00'),
	   ('03/02/2014','3400,00'),
	   ('10/02/2014','2100,00'),
	   ('15/02/2014','2700,00'),
	   ('17/03/2014','560,00'),
	   ('09/04/2014','1200,00'),
	   ('07/05/2014','3500,00'),
	   ('07/05/2014','3400,00'),
	   ('05/05/20014','4000,00');

	   