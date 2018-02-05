json.extract! user_charity, :id, :user_id, :charity_id, :status, :created_at, :updated_at
json.url user_charity_url(user_charity, format: :json)
