json.array!(@integrantes) do |integrante|
  json.extract! integrante, :nombre, :apellido_1, :apellido_2, :perfil, :telefono, :imagen, :user_id
  json.url integrante_url(integrante, format: :json)
end
