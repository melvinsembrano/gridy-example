json.extract! account, :id, :email, :first_name, :last_name, :birthday, :company, :position, :created_at, :updated_at
json.url account_url(account, format: :json)
