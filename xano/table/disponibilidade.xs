table Disponibilidade {
  auth = false

  schema {
    int id
    timestamp created_at?=now {
      visibility = "private"
    }
  
    int usuario_id? {
      table = "user"
    }
  
    enum dia_semana? {
      values = [
        "segunda"
        "terca"
        "quarta"
        "quinta"
        "sexta"
        "sabado"
        "domingo"
      ]
    }
  
    text hora_inicio? filters=trim
    text hora_fim? filters=trim
  }

  index = [
    {type: "primary", field: [{name: "id"}]}
    {type: "btree", field: [{name: "created_at", op: "desc"}]}
  ]

  guid = "1GTWAk7LYYx0_7CFRH7k2z8Ec9E"
}