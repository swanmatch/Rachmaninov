json.array!(@composers) do |composer|
  json.extract! composer, :id, :name, :created_by, :updated_by, :deleted_by, :deleted_at
  json.url composer_url(composer, format: :json)
end
