// Add Disciplina record
query disciplina verb=POST {
  api_group = "Authentication"

  input {
    dblink {
      table = "Disciplina"
    }
  }

  stack {
    db.add Disciplina {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $disciplina
  }

  response = $disciplina
  guid = "Nb65ZEjjlawXynv9OQspd9D_MK4"
}