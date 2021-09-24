json.extract! carro, :id, :placa, :modelo, :chassi, :ano, :created_at, :updated_at
json.url carro_url(carro, format: :json)
