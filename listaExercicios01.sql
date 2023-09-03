-- Exercícios da lista

-- ex9

select produto, SUM(receita) as receita_total from vendas group by produto having receita_total >'10.000';