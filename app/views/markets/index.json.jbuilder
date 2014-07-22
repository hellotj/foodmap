json.array!(@markets) do |m|
  json.extract! m, :id, :latitude, :longitude, :address
  json.url market_url(m, format: :json)
end
