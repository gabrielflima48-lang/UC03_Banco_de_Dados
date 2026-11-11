/* SA1 - Banco da indústria de embalagens */
DROP DATABASE IF EXISTS embalagens;
CREATE DATABASE embalagens;
USE embalagens;


create table Unidade_Maceio(
    id_unidade INT AUTO_INCREMENT PRIMARY KEY,
    unidade_maceio VARCHAR(100) NOT NULL,
	tabuleiro VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    produto_id INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto) 
);
create table produtos(

id_produtos INT AUTO_INCREMENT PRIMARY KEY,
 nome varchar (150) not null UNIQUE,
  preco_de_tabela varchar (150) not null

  );
  create table resina(
  id_resina INT auto_increment PRIMARY KEY,
  nome varchar (100),
  produto_id INT NOT NULL,
  FOREIGN KEY (produto_id) REFERENCES produtos(id_produtos)
  );
  CREATE TABLE ordem_de_produtos(
  Data varchar (150) not null,
  quantidade  varchar (150) not null,
  nome  varchar (150) not null,
  id_produto INT NOT NULL,
  FOREIGN KEY (produto_id) REFERENCES produtos(id_produtos)
  );
  CREATE table expedição(
 id_expedição INT auto_increment PRIMARY KEY,
  preço varchar (150) not null,
   quantidade varchar (150) not null,
   id_unidade INT NOT NULL,
   ID_CLIENTE INT NOT NULL,
   foreign key (id_unidade) references UNIDADE(id_unidade),
   FOREIGN KEY (ID_CLIENTE) references cliente (id_cliente)
   );
    CREATE TABLE pedido_resina (
    id_pedido INT auto_increment PRIMARY KEY,
    id_produto  VARCHAR (150) not null,
    id_resina VARCHAR (150) NOT NULL,
    ID_EXPEDICAO INT NOT NULL,
FOREIGN KEY (ID_EXPEDICAO) REFERENCES EXPEDICAO (ID_EXPEDICAO)
   );
  CREATE TABLE CLIETE (
  id_clinte INT AUTO_INCREMENT PRIMARY KEY,
  cidade VARCHAR (150) not null,
  cnpj VARCHAR (150) NOT NULL,
  razao_social VARCHAR (150) NOT NULL
 
  );
  
 