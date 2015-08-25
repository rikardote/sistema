json.array!(@vacations) do |vacation|
  json.extract! vacation, :id, :period, :year
  json.url vacation_url(vacation, format: :json)
end
