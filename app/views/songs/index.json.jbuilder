json.array!(@songs) do |song|
  json.extract! song, :id, :title, :composer_id, :tempo, :key, :scale
  json.url song_url(song, format: :json)
end
