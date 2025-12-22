-- listar todos os filmes com classificacao pg-13 e duração maior que 2h
select title, release_year, length, rating from film
where rating = 'PG-13' and length > 120
order by length desc;

-- encontrar clientes ativos que moram em um id de loja especifico
select first_name, last_name, email from customer
where active = 1 and store_id = 1

select 
f.title as filme, 
a.first_name || '' || a.last_name as ator
from film f
join film_actor fa on f.film_id = fa.film_id
join actor a on fa.actor_id = a.actor_id
where f.title = 'ACADEMY DINOSAUR';
