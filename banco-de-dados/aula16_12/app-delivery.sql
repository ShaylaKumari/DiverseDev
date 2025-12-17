-- Aluna: Ananda Shayla Soares Kumari

-- Criação das tabelas
create table restaurante (
	id_restaurante serial primary key, 
	nome varchar(100) not null,
	categoria varchar(50) not null
);

create table cliente (
	id_cliente serial primary key,
	nome varchar(100) not null,
	endereco varchar(150) not null
);

create table entregador (
	id_entregador serial primary key,
	nome varchar(100) not null
);

create table produto (
	id_produto serial primary key,
	nome varchar(100) not null,
	descricao varchar(200),
	preco_atual decimal(5,2) not null,
	id_restaurante int not null,
	foreign key (id_restaurante)
		references restaurante(id_restaurante)
);

create table pedido (
	id_pedido serial primary key,
	data_hora timestamp not null,
	status varchar(30) not null,
	id_cliente int not null,
	id_restaurante int not null,
	id_entregador int not null,
	foreign key (id_cliente)
		references cliente(id_cliente),
	foreign key (id_restaurante)
		references restaurante(id_restaurante),
	foreign key (id_entregador)
		references entregador(id_entregador)
);

create table item_pedido (
	id_pedido int not null,
	id_produto int not null,
	quantidade int not null,
	preco_momento decimal(5,2) not null,
	primary key (id_pedido, id_produto),
	foreign key (id_pedido)
		references pedido(id_pedido),
	foreign key (id_produto)
		references produto(id_produto)
);

-- Inserção e visualização dos restaurantes
insert into restaurante (nome, categoria)
values 
('Burguer Chicken', 'Lanches'),
('Kenko', 'Japonês'),
('Central Chicken', 'Lanches');

select * from restaurante;

-- Inserção e visualização dos produtos
insert into produto (nome, descricao, preco_atual, id_restaurante)
values 
('Hambúrguer', 'Carne artesanal', '25.00', 1),
('Coca Cola', '1L', '10.00', 1),
('Combo sushi', '35 peças variadas', '90.00', 2),
('Coca Cola', 'Lata', '7.00', 2),
('Frango frito', 'Balde 500g', '50.00', 3),
('Guaraná', '1L', '8.00', 3);

select * from produto;

-- Inserção e visualização dos clientes
insert into cliente (nome, endereco)
values
('Ananda Shayla', 'Rua A, 123, Centro'),
('Flávio Crispin', 'Rua B, 321, Centro');

select * from cliente;

-- Inserção e visualização dos entregadores
insert into entregador (nome)
values ('João'), ('Maria');

select * from entregador;

-- Inserção e visualização dos pedidos
insert into pedido (data_hora, status, id_cliente, id_restaurante, id_entregador)
values
(now(), 'Em preparo', 1, 2, 1),
(now(), 'Saiu para entrega', 2, 1, 2);

select * from pedido;

-- Inserção e visualização dos itens do pedido
insert into item_pedido (id_pedido, id_produto, quantidade, preco_momento)
values
(1, 3, 1, '90.00'),
(1, 4, 1, '7.00'),
(2, 1, 2, '25.00');

select * from item_pedido;

-- Desafio: histórico se mantendo apesar do aumento no preço do produto
update produto
set preco_atual = 95.00
where id_produto = 3;

select * from item_pedido where id_produto = 3;