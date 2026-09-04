create database bd_Confeitaria 
go

create table tbCliente(
codCliente int PRIMARY KEY IDENTITY(1,1),
nomeCliente varchar(100),
dataNascimentoCliente date,
ruaCliente varchar(100),
numCasacliente int,
cepCliente varchar(20),
bairroCliente varchar(50),
cidadeCliente varchar(50),
estadoCliente varchar(50),
cpfCliente varchar(20),
sexoCliente varchar(10)
);

create table tbCategoriaProduto(
codCategoriaProduto int PRIMARY KEY IDENTITY(1,1),
nomeCategoriaProduto varchar(100)
);

create table tbProduto (
codProduto int PRIMARY KEY IDENTITY(1,1),
nomeProduto varchar (100),
precokiloProduto money,
codCategoriaProduto int FOREIGN KEY references tbCategoriaProduto (codCategoriaProduto)
);

create table tbEncomenda(
codEncomenda int PRIMARY KEY IDENTITY(1,1),
dataEncomenda date,
valorTotalEncomenda varchar(100),
dataEntregaEncomenda varchar(100),
codCliente int FOREIGN KEY references tbCliente (codCliente)
);

create table tbItensEncomenda(
codItensEncomenda int PRIMARY KEY IDENTITY(1,1),
codEncomenda int FOREIGN KEY references tbEncomenda (codEncomenda),
codProduto int FOREIGN KEY references tbProduto (codProduto),
quantidadeKilos varchar(50),
subTotal varchar(100)
);