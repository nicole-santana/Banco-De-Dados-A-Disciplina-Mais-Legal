-- Exercícios da lista

-- ex6

select nome, COUNT(titulo) as n°_de_livros from autores inner join livros where autores.id = livros.autor_id group by nome;