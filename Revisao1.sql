create table cestoA(
idA SERIAL primary key,
frutaA varchar (100) not null
);
create table cestoB(
idB SERIAL primary key,
frutaB varchar(100) not null
);
insert into cestoA(frutaA)
values ('maçã🍎'),
values ('laranja🍊'),
values ('banana🍌'),
values ('abacaxi🍍');


insert into cestoB(frutaB)
values ('Laranja🍊'),
values ('Melancia🍉'),
values ('Uva🍇'),
values ('Maçã🍎');


select + from cestoB

SELECT idA, frutaA, idB, frutaB
FROM CestoA INNER JOIN CestoB ON CestoA.frutaA = CestoB.frutaB




----Exercicio1----
SELECT a.nome, a.idade, a.sexo, t.nome_turma, a.ativo
FROM alunos as a INNER JOIN turmas as t on t.id_turma = a.id_turma
WHERE a.ativo = true
ORDER BY a.nome;

SELECT professores.nome_professor, disciplinas.nome_disciplina
FROM professores INNER JOIN disciplinas on professores.id_professor = disciplinas.id_professor 


----Exercicio2----
SELECT alunos.nome as aluno, aluno_disciplina.media, aluno_disciplina.nr_faltas
FROM alunos INNER JOIN aluno_disciplina on alunos.id_aluno = aluno_disciplina.id_aluno
WHERE alunos.ativo = true
ORDER BY aluno_disciplina.nr_faltas desc;



SELECT alunos.nome, aluno_disciplina.media
FROM alunos left join aluno_disciplina on alunos.id_aluno = aluno_disciplina.id_aluno


select professores.nome_professor, disciplinas.nome_disciplina
from professores inner join disciplinas on professores.id_professor = disciplinas.id_professor
where professores.formacao = 'Nivel Superior'



select alunos.nome, aluno_disciplina.media
from alunos inner join alun_diciplina on alunos.id_aluno = aluno_disciplina.id_aluno
where alunos.sexo = 'F'
order by aluno_disciplina.media desc
limit 3



select alunos.nome,



