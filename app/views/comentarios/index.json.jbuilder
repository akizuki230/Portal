json.array!(@comentarios) do |comentario|
  json.extract! comentario, :comentario, :user_id, :articulo_id
  json.url comentario_url(comentario, format: :json)
end
