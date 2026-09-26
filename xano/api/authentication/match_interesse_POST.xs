// Add Match_interesse record
query match_interesse verb=POST {
  api_group = "Authentication"

  input {
    dblink {
      table = "Match_interesse"
    }
  }

  stack {
    precondition ($input.usuario_id != $input.usuario_alvo_id) {
      error_type = "inputerror"
      error = "Você não pode dar match em si mesmo"
    }
  
    precondition ($input.percentual_compatibilidade >= 0 && $input.percentual_compatibilidade <= 100) {
      error_type = "inputerror"
      error = "O percentual deve estar entre 0 e 100"
    }
  
    db.add Match_interesse {
      enforce_hidden_fields = false
      data = {created_at: "now"}
    } as $match_interesse
  }

  response = $match_interesse
  guid = "aSaiU-kVZ34qwzRZTlqXdi3s9hE"
}