// Add Usuario_disciplina record
query usuario_disciplina verb=POST {
  api_group = "Authentication"

  input {
    dblink {
      table = "Usuario_disciplina"
    }
  }

  stack {
    db.add Usuario_disciplina {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $usuario_disciplina
  }

  response = $usuario_disciplina
  guid = "dTVnd9jiXkaIN80vTdZ6Wg5_9B0"
}