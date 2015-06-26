json.array!(@contacts) do |contact|
  json.extract! contact, :id, :tel, :street, :city, :state, :country, :about_user_id
  json.url contact_url(contact, format: :json)
end
