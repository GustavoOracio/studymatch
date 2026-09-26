// Get curso record
query "curso/{curso_id}" verb=GET {
  api_group = "Authentication"

  input {
    int curso_id? filters=min:1
  }

  stack {
    db.get curso {
      field_name = "id"
      field_value = $input.curso_id
    } as $curso
  
    precondition ($curso != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $curso
  guid = "4y6Q7kUXDb_oEk8NX1FxVHQkwAQ"
}