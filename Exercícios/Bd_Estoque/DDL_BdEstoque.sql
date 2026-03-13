create database bdEstoque
go 

use bdEstoque

create table tbCliente(
 codCliente int identity(1,1) primary key ,
 nomeCliente varchar (50),
 cpfCliente varchar (20),
 emailCliente varchar (50),
 sexoCliente varchar (2),
 dataNascCliente varchar(10)
 );

 create table tbVendas(
  codVenda int identity(1,1) primary key,
  dataVenda varchar (10),
  valorTotalVendas varchar(10),
  codCliente int FOREIGN KEY (codCliente) references tbCliente (codCliente)
  );

  create table tbFabricante(
  codFabricante int identity(1,1) primary key,
  nomeFabricante varchar (50)
  );

  create table tbFornecedor(
  codFornecedor int identity(1,1) primary key,
  nomeFornecedor varchar (50),
  contatoFornecedor varchar (20)
  );

  create table tbProduto(
  codProduto int identity(1,1) primary key,
  descricaoProduto varchar(200),
  valorProduto varchar(10),
  quantidadeProduto varchar(20),
  codFabricante  int FOREIGN KEY (codFabricante) references tbFabricante (codFabricante),
  codFornecedor  int FOREIGN KEY (codFornecedor) references  tbFornecedor(codFornecedor)
  );

  create table tbItensVendas(
  codItensVendas int identity(1,1) primary key,
  codVenda int FOREIGN KEY (codVenda) references tbVendas (codVenda),
  codProduto int FOREIGN KEY (codProduto) references tbProduto (codProduto),
  quantidadeItensVendas varchar (20),
  subTotalItensVendas varchar (20)
  );

