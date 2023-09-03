-- Exercícios da lista

-- ex7

select curso, count(nome) as n°_de_alunos from matriculas inner join alunos on matriculas.aluno_id=alunos.id group by curso;