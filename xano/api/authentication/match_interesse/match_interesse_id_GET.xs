// Get Match_interesse record
query "match_interesse/{match_interesse_id}" verb=GET {
  api_group = "Authentication"

  input {
    int match_interesse_id? filters=min:1
  }

  stack {
    db.get Match_interesse {
      field_name = "id"
      field_value = $input.match_interesse_id
    } as $match_interesse
  
    precondition ($match_interesse != null) {
      error_type = "notfound"
      error = "Not Found."
    }
  }

  response = $match_interesse
  guid = "6HUQxwdQjX2ezqxA92S3mTRjXRk"
}