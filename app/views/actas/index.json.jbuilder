json.array!(@actas) do |acta|
  json.extract! acta, :fecha, :lugar, :tipo_reunion, :orden_dia, :desarrollo, :concluciones, :tareas, :user_id
  json.url acta_url(acta, format: :json)
end
