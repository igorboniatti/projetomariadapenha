json.extract! publication, :id, :title, :date, :content, :created_at, :updated_at
json.url publication_url(publication, format: :json)
