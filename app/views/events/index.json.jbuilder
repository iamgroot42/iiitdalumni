json.array!(@events) do |event|
  json.extract! event, :id, :start, :end, :title, :summary, :description, :user_id, :cpntact, :venue, :fblink, :photo
  json.url event_url(event, format: :json)
end
