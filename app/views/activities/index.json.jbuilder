json.array!(@activities) do |activity|
  json.extract! activity, :id, :duration, :date, :description
  json.url activity_url(activity, format: :json)
end
