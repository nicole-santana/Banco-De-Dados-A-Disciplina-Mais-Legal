-- Exercícios da lista

-- ex 16

with contagemlivros as (
    select autor_id, count(*) as quantidadelivros
    from livros
    group by autor_id
)

select autores.nome as autor, quantidadelivros as maiorquantidadelivros
from contagemlivros
join autores on contagemlivros.autor_id = autores.id
where quantidadelivros = (
    select max(quantidadelivros) 
    from contagemlivros
);