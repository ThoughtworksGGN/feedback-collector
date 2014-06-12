json.array!(@feedbacks) do |feedback|
  json.extract! feedback, :id, :talk_id, :attender_id, :notes, :rating
  json.url feedback_url(feedback, format: :json)
end
