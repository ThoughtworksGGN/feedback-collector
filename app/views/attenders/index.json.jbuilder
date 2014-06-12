json.array!(@attenders) do |attender|
  json.extract! attender, :id, :name, :email, :phone, :company
  json.url attender_url(attender, format: :json)
end
