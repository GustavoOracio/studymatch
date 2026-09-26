// Add curso record
query curso verb=POST {
  api_group = "Authentication"

  input {
    dblink {
      table = "curso"
    }
  }

  stack {
    db.add curso {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $curso
  }

  response = $curso
  guid = "3WyWDS79JzDTfXqFE3rMR6jP_Gk"
}