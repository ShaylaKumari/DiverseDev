-- Junções: relatório de assinantes
select cpf, email, plano.tipo from conta
inner join plano
on conta.id_plano = plano.id_plano;

-- Junções: onde eu parei?
select perfil.nome, filme.titulo, historico.tempo_decorrido
from historico
inner join perfil
	on historico.id_perfil = perfil.id_perfil
inner join filme
	on historico.id_filme = filme.id_filme
where historico.tempo_decorrido > 0
	and historico.tempo_decorrido < filme.duracao;