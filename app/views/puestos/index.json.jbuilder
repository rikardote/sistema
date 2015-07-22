json.array!(@puestos) do |puesto|
  json.extract! puesto, :id, :name, :puesto
  json.url puesto_url(puesto, format: :json)
end
