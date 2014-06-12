json.array!(@conferences) do |conference|
  json.extract! conference, :id, :name, :start, :end, :location, :description
  json.url conference_url(conference, format: :json)
end
