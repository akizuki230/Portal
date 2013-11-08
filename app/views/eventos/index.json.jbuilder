json.array!(@eventos) do |evento|
  json.extract! evento, :lugar, :fecha, :contenido, :imagen
  json.url evento_url(evento, format: :json)
end
