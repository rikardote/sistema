json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :dpto_descripcion, :centro_id
  json.url departamento_url(departamento, format: :json)
end
