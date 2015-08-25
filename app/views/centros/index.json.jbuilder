json.array!(@centros) do |centro|
  json.extract! centro, :id, :centro_iden, :centro_descripcion
  json.url centro_url(centro, format: :json)
end
