// Query all curso records
query curso verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query curso {
      return = {type: "list"}
    } as $curso
  }

  response = $curso
  guid = "DIk1XUPfMILLNQBq041_JwOWqkw"
}