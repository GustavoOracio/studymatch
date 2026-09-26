// Query all Disponibilidade records
query disponibilidade verb=GET {
  api_group = "Authentication"

  input {
  }

  stack {
    db.query Disponibilidade {
      return = {type: "list"}
    } as $disponibilidade
  }

  response = $disponibilidade
  guid = "sGp5yFbWxTGoHDLzBW9HOnkJ2lQ"
}