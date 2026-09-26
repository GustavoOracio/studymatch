// Get Disponibilidade record
query "disponibilidade/{disponibilidade_id}" verb=GET {
  api_group = "Authentication"

  input {
    int disponibilidade_id? filters=min:1
  }

  stack {
    db.get Disponibilidade {
      field_name = "id"
      field_value = $input.disponibilidade_id
    } as $disponibilidade
  
    precondition ($disponibilidade != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $disponibilidade
  guid = "xW7vMcBIdYmd1G5GV2vcyRVDwEA"
}