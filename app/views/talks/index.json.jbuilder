json.array!(@talks) do |talk|
  json.extract! talk, :id, :name, :description, :start, :end, :conference_id, :presenter
  json.url talk_url(talk, format: :json)
end
