-- Criação do banco de dados
create database cinestream;

-- Criação de tabelas
create table plano (
	id_plano serial primary key,
	tipo varchar(50) not null,
	valor_mensal decimal(5,2) not null,
	limite_perfis int not null
);

create table conta (
	cpf varchar(11) primary key,
	email varchar(100) not null unique,
	senha varchar(100) not null,
	data_vencimento date not null,
	id_plano int not null,
	foreign key (id_plano)
		references plano(id_plano)
);

create table perfil (
	id_perfil serial primary key,
	cpf varchar(11) not null,
	nome varchar(100) not null,
	classificacao_etaria varchar(50) not null,
	foreign key (cpf)
		references conta(cpf)
		on delete cascade
);

create table filme (
	id_filme serial primary key, 
	titulo varchar(100) not null,
	sinopse text,
	ano_lancamento int, 
	duracao int not null,
	classificacao_indicativa varchar(50) not null
);

create table genero (
	id_genero serial primary key,
	categoria varchar(50) not null
);

create table filme_genero (
	id_filme int not null,
	id_genero int not null,
	primary key (id_genero, id_filme),
	foreign key (id_filme)
		references filme(id_filme),
	foreign key (id_genero)
		references genero(id_genero)
);

create table historico (
	id_historico serial primary key,
	data_visualizacao date not null,
	tempo_decorrido int not null,
	id_filme int not null,
	id_perfil int not null,
	foreign key (id_filme)
		references filme(id_filme),
	foreign key (id_perfil)
		references perfil(id_perfil)
);