json.array!(@chords) do |chord|
  json.extract! chord, :id, :name
  json.url chord_url(chord, format: :json)
end
