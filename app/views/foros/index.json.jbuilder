json.array!(@foros) do |foro|
  json.extract! foro, :tema, :user_id
  json.url foro_url(foro, format: :json)
end
