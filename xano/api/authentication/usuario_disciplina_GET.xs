// Query all Usuario_disciplina records
query usuario_disciplina verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query Usuario_disciplina {
      return = {type: "list"}
    } as $usuario_disciplina
  }

  response = $usuario_disciplina
  guid = "a_e-R3FFUujx2-ErbVWftS0CRNE"
}