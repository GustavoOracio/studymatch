// Get Disciplina record
query "disciplina/{disciplina_id}" verb=GET {
  api_group = "Authentication"

  input {
    int disciplina_id? filters=min:1
  }

  stack {
    db.get Disciplina {
      field_name = "id"
      field_value = $input.disciplina_id
    } as $disciplina
  
    precondition ($disciplina != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $disciplina
  guid = "f2U3we4gcwitLQf9bdOuBRkITds"
}