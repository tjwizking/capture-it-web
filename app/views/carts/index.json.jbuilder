json.array!(@carts) do |cart|
  json.extract! cart, :id, :product_id, :quantity, :session_id
  json.url cart_url(cart, format: :json)
end
