// Edit Usuario_disciplina record
query "usuario_disciplina/{usuario_disciplina_id}" verb=PATCH {
  api_group = "Authentication"

  input {
    int usuario_disciplina_id? filters=min:1
    dblink {
      table = "Usuario_disciplina"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch Usuario_disciplina {
      field_name = "id"
      field_value = $input.usuario_disciplina_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $usuario_disciplina
  }

  response = $usuario_disciplina
  guid = "zFgzkkKgn_r9VgNDdqrNCPp7-TM"
}