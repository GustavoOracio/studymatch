table Usuario_disciplina {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int usuario_id? {
      table = "user"
    }
  
    int disciplina_id? {
      table = "Disciplina"
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {
      type : "btree|unique"
      field: [
        {name: "usuario_id", op: "desc"}
        {name: "disciplina_id", op: "asc"}
      ]
    }
  ]

  guid = "lWKOrWghLcxz5AZ7bv__echANjg"
}