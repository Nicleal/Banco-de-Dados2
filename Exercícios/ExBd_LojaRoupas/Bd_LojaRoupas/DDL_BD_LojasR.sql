create database bdLojasRoupas
go 

DROP TABLE tbItensVendas
DROP TABLE tbProduto
DROP TABLE tbFuncionario
DROP TABLE tbVendas
DROP TABLE tbCliente
DROP TABLE tbVendedor
DROP TABLE tbFabricante

use bdLojasRoupas

create table tbCliente(
 codCliente int identity(1,1) primary key ,
 nomeCliente varchar (50),
 idadeCliente varchar (50)
 );
 create table tbVendedor (
 codVendedor int identity(1,1) primary key,
 nomeVendedor varchar (50)
 );

 create table tbVendas(
  codVenda int identity(1,1) primary key,
  dataVenda varchar (10),
  TotalVendas varchar(10),
  codCliente int FOREIGN KEY (codCliente) references tbCliente (codCliente),
  codVendedor int FOREIGN KEY (codVendedor) references tbVendedor (codVendedor)
  );

  create table tbFabricante(
  codFabricante int identity(1,1) primary key,
  nomeFabricante varchar (50)
  );

  create table tbFuncionario(
  codFuncionario int identity(1,1) primary key,
  nomeFuncionario varchar (50),
  idadeFuncionario varchar (10),
  dataAdmissao varchar (10),
  salarioFuncionario varchar(20)
  );

  create table tbProduto(
  codProduto int identity(1,1) primary key,
  nomeProduto varchar(200),
  precoProduto varchar(10),
  dataEntradaProduto varchar(20),
  codFabricante  int FOREIGN KEY (codFabricante) references tbFabricante (codFabricante),
  codFuncionario  int FOREIGN KEY (codFuncionario) references  tbFuncionario(codFuncionario)
  );

  create table tbItensVendas(
  codItensVendas int identity(1,1) primary key,
  codVenda int FOREIGN KEY (codVenda) references tbVendas (codVenda),
  codProduto int FOREIGN KEY (codProduto) references tbProduto (codProduto),
  quantidadeItensVenda varchar (20),
  subTotalItens varchar (20)
  );
