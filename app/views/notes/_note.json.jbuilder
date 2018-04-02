json.extract! note, :id, :title, :subhead, :body, :date, :created_at, :updated_at
json.url note_url(note, format: :json)
