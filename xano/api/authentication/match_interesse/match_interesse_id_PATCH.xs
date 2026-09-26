// Edit Match_interesse record
query "match_interesse/{match_interesse_id}" verb=PATCH {
  api_group = "Authentication"

  input {
    int match_interesse_id? filters=min:1
    dblink {
      table = "Match_interesse"
    }
  }

  stack {
    util.get_raw_input {
      encoding = "json"
      exclude_middleware = false
    } as $raw_input
  
    db.patch Match_interesse {
      field_name = "id"
      field_value = $input.match_interesse_id
      data = `$input|pick:($raw_input|keys)`|filter_null|filter_empty_text
    } as $match_interesse
  }

  response = $match_interesse
  guid = "2w7RDvF_lelZQbfBG2y9h0kpJmU"
}