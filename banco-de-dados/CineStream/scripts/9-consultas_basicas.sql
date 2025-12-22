-- Consultas básicas: catálogo recente
select titulo, ano_lancamento from filme
where ano_lancamento > 2010
order by ano_lancamento desc;

-- Consultas básicas: controle parental
select nome, classificacao_etaria from perfil
where classificacao_etaria != '18'
order by nome asc;

-- Consultas básicas: filmes longos
select titulo, duracao from filme
where duracao >= 120
order by duracao desc;