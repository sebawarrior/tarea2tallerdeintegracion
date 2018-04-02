json.extract! note, :id, :title, :subhead, :body, :created_at
json.url note_url(note, format: :json)
