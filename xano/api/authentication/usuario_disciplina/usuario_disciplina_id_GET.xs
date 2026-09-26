// Get Usuario_disciplina record
query "usuario_disciplina/{usuario_disciplina_id}" verb=GET {
  api_group = "Authentication"

  input {
    int usuario_disciplina_id? filters=min:1
  }

  stack {
    db.get Usuario_disciplina {
      field_name = "id"
      field_value = $input.usuario_disciplina_id
    } as $usuario_disciplina
  
    precondition ($usuario_disciplina != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $usuario_disciplina
  guid = "S6VnydK2V1eDNEsJSZ0fdAC6OvI"
}