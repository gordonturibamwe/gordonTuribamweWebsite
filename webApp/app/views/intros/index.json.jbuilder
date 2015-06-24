json.array!(@intros) do |intro|
  json.extract! intro, :id, :intro, :home-user_id
  json.url intro_url(intro, format: :json)
end
