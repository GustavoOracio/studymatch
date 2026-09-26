// Delete Usuario_disciplina record.
query "usuario_disciplina/{usuario_disciplina_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int usuario_disciplina_id? filters=min:1
  }

  stack {
    db.del Usuario_disciplina {
      field_name = "id"
      field_value = $input.usuario_disciplina_id
    }
  }

  response = null
  guid = "gHwRqIrooBSWo2wETc2fpVwDARQ"
}