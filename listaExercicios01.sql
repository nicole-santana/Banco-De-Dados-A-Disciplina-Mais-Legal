-- Exercícios da lista:


-- Ex4

select alunos.nome from alunos inner join matriculas on alunos.id = matriculas.aluno_id where curso = 'Engenharia de Software';