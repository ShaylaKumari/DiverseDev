create table clientes (
	id_cliente serial primary key,
	nome varchar(100) not null,
	email varchar(100) unique,
	datacadastro date
);

select * from clientes;

select id_cliente, nome from clientes
order by id_cliente;

select id_cliente as codigo, nome from clientes;

alter table clientes
add telefone varchar(20);

drop table clientes;

-- (begin) comando para possibilitar desfazer a ação se necessário
begin;

insert into clientes (nome, email, datacadastro, telefone)
values 
('Ananda Shayla', 'ananda@hotmail.com', '15/12/2025', '99999-9999'),
('Layze Kumari', 'layze@hotmail.com', '15/12/2025', '99999-0000'),
('Joana Kumari', 'joana@hotmail.com', '15/12/2025', '99999-1111');

-- (commit) salva a informação e impede o rollback
commit;

-- (rollback) comando para desfazer a ação realizada
rollback;

truncate table clientes;

-- apaga as informações zerando o serial de id
truncate table clientes restart identity;

update clientes
set telefone = '11111-2222'
where id_cliente = 1;

delete from clientes
where id_cliente = 3;