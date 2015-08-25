json.array!(@qnas) do |qna|
  json.extract! qna, :id, :qna_cod, :qna_year
  json.url qna_url(qna, format: :json)
end
