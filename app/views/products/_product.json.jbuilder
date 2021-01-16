json.extract! product, :id, :name, :description, :enabled, :picture, :created_at, :updated_at
json.url product_url(product, format: :json)
