json.extract! product, :id, :name, :pricing, :description, :stock, :categoria, :user_id, :created_at, :updated_at
json.url product_url(product, format: :json)