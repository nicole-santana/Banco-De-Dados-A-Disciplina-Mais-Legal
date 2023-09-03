-- Exercícios da lista

-- ex 10

select nome, count(titulo) as n°_de_livros from autores inner join livros where autores.id = livros.autor_id group by nome having n°_de_livros >2;
