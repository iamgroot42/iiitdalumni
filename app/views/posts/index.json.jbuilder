json.array!(@posts) do |post|
  json.extract! post, :id, :content, :user_id, :title, :image_url
  json.url post_url(post, format: :json)
end
