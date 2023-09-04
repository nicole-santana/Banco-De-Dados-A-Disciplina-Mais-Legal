-- Exercícios da lista

-- ex 17

select produto, sum(receita) as receita_total from vendas group by produto order by receita_total asc limit 1;