json.array!(@pixes) do |pix|
  json.extract! pix, :id, :name, :caption, :home_user_id
  json.url pix_url(pix, format: :json)
end
