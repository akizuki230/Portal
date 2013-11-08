json.array!(@respuestas) do |respuesta|
  json.extract! respuesta, :respuesta, :user_id, :articulo_id
  json.url respuesta_url(respuesta, format: :json)
end
