// Delete curso record.
query "curso/{curso_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int curso_id? filters=min:1
  }

  stack {
    db.del curso {
      field_name = "id"
      field_value = $input.curso_id
    }
  }

  response = null
  guid = "d4rzL169YP0ce6ysj76pR59RSEs"
}