json.array!(@proyectos_users) do |proyectos_user|
  json.extract! proyectos_user, :user_id, :proyecto_id
  json.url proyectos_user_url(proyectos_user, format: :json)
end
