// Delete Match_interesse record.
query "match_interesse/{match_interesse_id}" verb=DELETE {
  api_group = "Authentication"

  input {
    int match_interesse_id? filters=min:1
  }

  stack {
    db.del Match_interesse {
      field_name = "id"
      field_value = $input.match_interesse_id
    }
  }

  response = null
  guid = "9Lo3apUOI7t_w8T493p-ol-Hyd8"
}