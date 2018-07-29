json.extract! inmail, :id, :title, :from, :to, :datecoming, :mailtext, :response, :dispo_id, :created_at, :updated_at
json.url inmail_url(inmail, format: :json)
