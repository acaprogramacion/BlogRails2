json.array!(@meets) do |meet|
  json.extract! meet, :id, :subject, :meeting, :status, :user_id
  json.url meet_url(meet, format: :json)
end
