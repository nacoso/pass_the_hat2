json.extract! donation, :id, :amount, :user_charity_id, :created_at, :updated_at
json.url donation_url(donation, format: :json)
