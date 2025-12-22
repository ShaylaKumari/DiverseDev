create table clientes (
id_cliente serial primary key,
nome varchar (100) not null,
email varchar (100) unique,
datacadastro date
)

alter table clientes 
add telefone varchar (20)

drop table clientes


select * from clientes


-- exemplo de transacional
begin;
INSERT INTO clientes (nome, email) 
VALUES 
('pedro', 'pedro@gmail.com'),
('maria', 'maria@gmail.com'),
('antonio', 'antonio@gmail.com');


-- salva o q foi feito
commit 

-- desfaz o anterior
rollback;

update clientes
set email = 'vida@gmail.com'
where id_cliente = 4

rollback

delete from clientes
where id_cliente = 2


truncate table clientes
truncate table clientes restart identity