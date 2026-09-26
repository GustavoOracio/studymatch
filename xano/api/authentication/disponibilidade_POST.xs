// Add Disponibilidade record
query disponibilidade verb=POST {
  api_group = "Authentication"

  input {
    dblink {
      table = "Disponibilidade"
    }
  }

  stack {
    precondition ($input.hora_fim > $input.hora_inicio) {
      error_type = "inputerror"
      error = "O horário de fim deve ser depois do horário de início"
    }
  
    db.add Disponibilidade {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $disponibilidade
  }

  response = $disponibilidade
  guid = "d0WE9f45wCAN1rekcyJRxxCVf2w"
}