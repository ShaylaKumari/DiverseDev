-- Inserção e visualização dos planos
insert into plano (tipo, valor_mensal, limite_perfis) 
values
('Básico', 19.90, 1),
('Padrão', 29.90, 3),
('Premium', 39.90, 5);

select * from plano;