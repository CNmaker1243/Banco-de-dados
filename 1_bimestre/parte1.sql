create database mini_mundo_tb1;
use mini_mundo_tb1;

create table cliente(
	id_cliente int unsigned,
    nome varchar(50) not null,
    endereço varchar(40) not null,
    celular int not null,
    dt_nascimento date not null,
    primary key(id_cliente)
);

CREATE TABLE produtos (
    id_produtos INT UNSIGNED,
    preco DECIMAL(6,2) NOT NULL,
    descricao VARCHAR(6553) NOT NULL,
    qt_estoque INT(255) unsigned not null,
    PRIMARY KEY (id_produtos)
);

create table pedidos (
	id_pedidos int unsigned,
    n_pedido int not null,
    dt_compra date not null,
    v_total decimal(6,2) not null,
    dt_entrega date not null,
    id_cliente int unsigned,
    primary key(id_pedidos),
    foreign key(id_cliente) references cliente(id_cliente)
);

create table itens(
	id_itens int unsigned,
    quantidade tinyint unsigned not null,
    v_unitario decimal(6,2) unsigned not null,
    v_total decimal(6,2) unsigned not null,
    id_produtos int unsigned not null,
    id_pedidos int unsigned not null,
	primary key(id_itens),
    foreign key(id_produtos) references produtos(id_produtos),
    foreign key(id_pedidos) references pedidos(id_pedidos)
);