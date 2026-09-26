// Delete Disciplina record.
query "disciplina/{disciplina_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int disciplina_id? filters=min:1
  }

  stack {
    db.del Disciplina {
      field_name = "id"
      field_value = $input.disciplina_id
    }
  }

  response = null
  guid = "PCAW95qD3g4XmKyBxXU7UsqDXBA"
}