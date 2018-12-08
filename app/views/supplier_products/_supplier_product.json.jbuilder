json.extract! supplier_product, :id, :user_id, :product_id, :stock, :price, :created_at, :updated_at
json.url supplier_product_url(supplier_product, format: :json)
