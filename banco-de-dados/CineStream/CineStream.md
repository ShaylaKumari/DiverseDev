# Projeto: Database "CineStream"



#### Entidades e Atributos



**Planos de assinatura:**

* id\_plano (pk)
* tipo
* valor mensal
* limite de perfis



**Conta do usuário:**

* cpf (pk)
* plano escolhido (fk\_id\_plano)
* email
* senha
* data de vencimento da fatura



**Perfis de visualização:**

* id\_perfil (pk)
* fk\_cpf
* nome
* classificação etária



**Catálogo de filmes:**

* id\_filme (pk)
* título
* sinopse
* ano de lançamento
* duração
* classificação indicativa



**Histórico:**

* id\_historico (pk)
* fk\_id\_perfil
* fk\_id\_filme
* data de visualizacao
* tempo decorrido



**Gêneros:**

* id\_genero (pk)
* categoria



**Filme\_Gênero:**

* fk\_id\_filme
* fk\_id\_genero





#### Relacionamentos

1:N entre plano e conta (contrata)

1:N entre conta e perfil (possui)

1:N entre perfil e histórico (assiste)

1:N entre filme e histórico (registra)

1:N entre filme e filme\_genero (classifica)

1:N entre genero e filme\_genero (classifica)



* Um plano pode ser contratado por várias contas, e cada conta contrata um único plano.
* Uma conta possui vários perfis, e cada perfil pertence a uma única conta.
* Um perfil pode assistir vários filmes, e um filme pode ser assistido por vários perfis; isso é registrado no histórico.
* Um gênero pode classificar vários filmes, e um filme pode ser classificado por vários gêneros; isso é registrado no filme\_genero.
