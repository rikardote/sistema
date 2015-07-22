json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :apellido_materno, :apellido_paterno
  json.url empleado_url(empleado, format: :json)
end
