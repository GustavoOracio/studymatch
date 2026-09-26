// Query all Disciplina records
query disciplina verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query Disciplina {
      return = {type: "list"}
    } as $disciplina
  }

  response = $disciplina
  guid = "e8rzygctWrepSa_AjVX0wZfHvP4"
}