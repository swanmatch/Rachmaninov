json.array!(@codes) do |code|
  json.extract! code, :id, :name
  json.url code_url(code, format: :json)
end
