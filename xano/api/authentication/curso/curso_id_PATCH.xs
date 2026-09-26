// Edit curso record
query "curso/{curso_id}" verb=PATCH {
  api_group = "Authentication"

  input {
    int curso_id? filters=min:1
    dblink {
      table = "curso"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch curso {
      field_name = "id"
      field_value = $input.curso_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $curso
  }

  response = $curso
  guid = "cUKJcgD3kOoKEYnRRtXKo_gQ6kY"
}