table Match_interesse {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int usuario_id? {
      table = "user"
    }
  
    int usuario_alvo_id? {
      table = "user"
    }
  
    int percentual_compatibilidade?
    enum status?=Pendente {
      values = ["pendente", "match", "recusado"]
    }
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {
      type : "btree|unique"
      field: [
        {name: "usuario_id", op: "desc"}
        {name: "usuario_alvo_id", op: "asc"}
      ]
    }
  ]

  guid = "Isqqtb--otIOhrCsjvhN9m8-Dio"
}