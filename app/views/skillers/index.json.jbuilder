json.array!(@skillers) do |skiller|
  json.extract! skiller, :id, :first_name, :last_name, :social_link_1, :social_link_2, :location, :bio, :user_id
  json.url skiller_url(skiller, format: :json)
end
