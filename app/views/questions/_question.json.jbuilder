json.extract! question, :id, :ask, :status, :created_at, :updated_at
json.url question_url(question, format: :json)
