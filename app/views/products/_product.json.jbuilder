json.extract! product, :id, :nombre, :precio, :descripcion, :created_at, :updated_at
json.url product_url(product, format: :json)