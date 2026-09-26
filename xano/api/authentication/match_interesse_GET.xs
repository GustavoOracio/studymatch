// Query all Match_interesse records
query match_interesse verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query Match_interesse {
      return = {type: "list"}
    } as $match_interesse
  }

  response = $match_interesse
  guid = "vdXrdz_NfMoexTsJ3qTFkWGVoUI"
}