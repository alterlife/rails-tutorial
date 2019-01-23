json.extract! microblog, :id, :user, :blog, :created_at, :updated_at
json.url microblog_url(microblog, format: :json)
