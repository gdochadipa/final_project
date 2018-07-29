json.extract! outmail, :id, :title, :to, :datesend, :mailtext, :response, :created_at, :updated_at
json.url outmail_url(outmail, format: :json)
