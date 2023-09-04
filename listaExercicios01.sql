-- Exercícios da lista

-- Exercícios:

-- 1:

select livros.titulo from aula_db_exemplos.livros;

-- 2:

select autores.nome from aula_db_exemplos.autores where autores.nascimento < '1901-01-01';

-- 3:

select livros.titulo from aula_db_exemplos.livros where livros.autor_id = 1;

-- 4:

select alunos.nome from alunos inner join matriculas on alunos.id = matriculas.aluno_id where curso = 'Engenharia de Software';

-- 5:

select produto, SUM(receita) as Receita_total from vendas group by produto;

-- 6:

select nome, COUNT(titulo) as n°_de_livros from autores inner join livros where autores.id = livros.autor_id group by nome;

-- 7:

select curso, count(nome) as n°_de_alunos from matriculas inner join alunos on matriculas.aluno_id=alunos.id group by curso;

-- 8:

select produto, AVG(receita) as receita_media from vendas group by produto;

-- 9:

select produto, SUM(receita) as receita_total from vendas group by produto having receita_total >'10.000';

-- 10:

select nome, count(titulo) as n°_de_livros from autores inner join livros where autores.id = livros.autor_id group by nome having n°_de_livros >2;

-- 11:
select titulo, nome from livros inner join autores on livros.autor_id=autores.id;

-- 12:
select nome, curso from alunos inner join matriculas on alunos.id = matriculas.aluno_id; 

-- 13:
select nome, titulo from autores left join livros on autores.id = livros.autor_id;

-- 14:

select curso, nome from alunos right join matriculas on alunos.id = matriculas.aluno_id;

-- 15
select nome, curso from alunos inner join matriculas on alunos.id = matriculas.aluno_id; 

-- é a mesma resposta do ex12(?)

-- 16

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

-- 17

select produto, sum(receita) as receita_total from vendas group by produto order by receita_total asc limit 1;


-- 18

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

-- 19

select nome, count(curso) as n°_de_matriculas from alunos inner join matriculas on alunos.id = matriculas.aluno_id group by nome;

-- 20

with n°_de_produtos as (
    select produto, count(*) as n° from vendas group by produto
)
select produto, n° from n°_de_produtos where n° = (select max(n°) from n°_de_produtos);





