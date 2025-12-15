-- Aluna: Ananda Shayla Soares Kumari

-- Exercício 1: A criação (database e tabela)
create table livros (
	id_livro serial primary key,
	titulo varchar(100),
	autor varchar(50),
	preco decimal(10, 2)
);

select * from livros;

-- Exercício 2: O estoque inicial (insert simples)
insert into livros (titulo, autor, preco)
values
('O Senhor dos Anéis', 'J.R.R. Tolkien', '150.00'),
('Harry Potter', 'J.K. Rowling', '80.50'),
('Dom Casmurro', 'Machado de Assis', '45.00'),
('1984', 'George Orwell', '19.25'),
('O Auto da Compadecida', 'Ariano Suassuna', '32.00');

-- Exercício 3: O estagiário confuso (rollback)
begin transaction;

insert into livros (titulo, autor, preco)
values ('Livro Teste', 'Autor Desconhecido', '9999.00');

select * from livros;

rollback;

select * from livros;

-- Exercício 4: Cadastro seguro (commit)
begin transaction;

insert into livros (titulo, autor, preco)
values ('Clean Code', 'Robert C. Martin', '120.00');

commit;

-- Exercício 5: A inflação (update)
update livros
set preco = '55.00'
where id_livro = 3;

-- Exercício 6: Venda do estoque (delete específico)
delete from livros
where id_livro = 2;

-- Exercício 7: A limpeza geral (truncate e restart)
truncate table livros restart identity;




