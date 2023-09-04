-- Exercícios da lista

-- ex 20

with n°_de_produtos as (
    select produto, count(*) as n° from vendas group by produto
)
select produto, n° from n°_de_produtos where n° = (select max(n°) from n°_de_produtos);
