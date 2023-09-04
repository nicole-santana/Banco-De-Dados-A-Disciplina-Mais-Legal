-- Exercícios da lista

-- ex 19

select nome, count(curso) as n°_de_matriculas from alunos inner join matriculas on alunos.id = matriculas.aluno_id group by nome;
