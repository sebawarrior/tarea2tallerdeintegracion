json.extract! note, :id, :title, :subtitle, :body, :date, :created_at, :updated_at
json.url note_url(note, format: :json)
