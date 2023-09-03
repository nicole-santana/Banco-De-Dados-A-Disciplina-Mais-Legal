-- Exercícios da lista

-- ex5

select produto, SUM(receita) as Receita_total from vendas group by produto;