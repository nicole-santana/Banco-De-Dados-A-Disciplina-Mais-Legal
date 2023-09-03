-- Exercícios da lista

-- ex8

select produto, AVG(receita) as receita_media from vendas group by produto;