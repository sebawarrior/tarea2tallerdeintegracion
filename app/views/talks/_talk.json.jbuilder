json.extract! talk, :id, :nombre, :body, :created_at, :updated_at
json.url note_talks_url(talk, format: :json)
