// Delete Disponibilidade record.
query "disponibilidade/{disponibilidade_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int disponibilidade_id? filters=min:1
  }

  stack {
    db.del Disponibilidade {
      field_name = "id"
      field_value = $input.disponibilidade_id
    }
  }

  response = null
  guid = "Q21zGNm69privGUMZK_Fs121AXk"
}