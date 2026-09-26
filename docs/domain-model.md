# Domain Model — StudyMatch

Modelo conceitual. Os nomes entre parênteses são as tabelas atuais no Xano.

```text
Curso
  ├── Disciplina
  └── Aluno (user)
        ├── Dificuldade em Disciplina (usuario_disciplina) ──► Disciplina
        ├── Disponibilidade (disponibilidade)
        └── Interesse de Match (match_interesse) ──► outro Aluno
```

## Curso (`curso`)
Curso de graduação oferecido pela faculdade (ex.: ADS).
- **Informações:** nome.
- **Relacionamentos:** um curso possui várias disciplinas e vários alunos.

## Disciplina (`disciplina`)
Matéria que pertence a um curso.
- **Informações:** nome, curso.
- **Relacionamentos:** pertence a um único curso. Pode ser marcada como dificuldade por vários alunos.

## Aluno (`user`)
Estudante que usa o sistema. Usa a tabela de autenticação do Xano.
- **Informações:** nome, sobrenome, e-mail, senha, telefone/contato, curso, semestre, sobre mim.
- **Regras:** e-mail único; telefone único; semestre de 1 a 12.
- **Relacionamentos:** pertence a um curso; tem várias dificuldades, várias disponibilidades e vários interesses de match.

## Dificuldade em Disciplina (`usuario_disciplina`)
Associação N:N que indica que um aluno tem dificuldade em uma disciplina.
- **Informações:** aluno, disciplina.
- **Regras:** o mesmo aluno não repete a mesma disciplina.
- **Em aberto:** a disciplina precisa ser do mesmo curso do aluno? [CONFIRMAR]

## Disponibilidade (`disponibilidade`)
Faixa de horário em que o aluno pode estudar.
- **Informações:** aluno, dia da semana (segunda a domingo), hora de início, hora de fim.
- **Regras:** hora de fim maior que hora de início.
- **Em aberto:** faixas sobrepostas do mesmo aluno são permitidas? [CONFIRMAR]

## Interesse de Match (`match_interesse`)
Registro de que um aluno demonstrou interesse em estudar com outro.
- **Informações:** aluno de origem, aluno alvo, percentual de compatibilidade (0 a 100), status.
- **Status:** `pendente` (interesse enviado) → `match` (alvo aceitou) ou `recusado` (alvo recusou).
- **Regras:** não pode ter o mesmo aluno como origem e alvo; não pode repetir o par origem/alvo.
- **Relacionamentos:** referencia dois alunos.

## Questões em aberto do domínio
- **Cálculo da compatibilidade** [CONFIRMAR]: quais critérios (disciplinas em comum, horários em comum, curso, semestre) e com quais pesos?
- **Par ou grupo** [CONFIRMAR]: o objetivo fala em grupos de estudo, mas o modelo atual é de pares. Grupo fica para depois?
- **Interesse cruzado:** se A tem interesse em B e B em A, são dois registros ou o segundo aceita o primeiro? [CONFIRMAR]
