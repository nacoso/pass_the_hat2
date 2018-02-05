json.extract! charity, :id, :name, :password_digest, :email, :charity_id, :created_at, :updated_at
json.url charity_url(charity, format: :json)
