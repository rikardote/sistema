json.array!(@captures) do |capture|
  json.extract! capture, :id, :empleado_id, :incident_id, :fecha_inicial, :fecha_final, :periodo
  json.url capture_url(capture, format: :json)
end
