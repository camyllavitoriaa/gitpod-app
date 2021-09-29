json.extract! cliente, :id, :documento, :nome, :email, :telefone, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
