-- Exercícios da lista

-- ex 18

ALTER TABLE vendas ADD id_a int(4);
UPDATE vendas SET id_a = 1 WHERE id in (1, 4, 10);
UPDATE vendas SET id_a = 2 WHERE id in (2,5,11);
UPDATE vendas SET id_a = 3 WHERE id in (3, 6, 13);
UPDATE vendas SET id_a = 4 WHERE id in (7, 14);
UPDATE vendas SET id_a = 5 WHERE id = 8;
UPDATE vendas SET id_a = 6 WHERE id = 9;

with total_de_vendas as (
	select count(produto)*20 as produtoT from vendas  inner join autores on vendas.id_a = autores.id group by produto
)

select produtoT, nome from total_de_vendas inner join autores;