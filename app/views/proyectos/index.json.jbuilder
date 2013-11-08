json.array!(@proyectos) do |proyecto|
  json.extract! proyecto, :titulo, :contenido, :imagen, :etapa
  json.url proyecto_url(proyecto, format: :json)
end
