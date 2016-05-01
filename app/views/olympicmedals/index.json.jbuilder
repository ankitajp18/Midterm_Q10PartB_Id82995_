json.array!(@olympicmedals) do |olympicmedal|
  json.extract! olympicmedal, :id, :athlete_name, :event, :country, :medal_type, :eventdate
  json.url olympicmedal_url(olympicmedal, format: :json)
end
