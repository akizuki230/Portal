json.array!(@articulos) do |articulo|
  json.extract! articulo, :titulo, :contenido, :imagen, :user_id
  json.url articulo_url(articulo, format: :json)
end
