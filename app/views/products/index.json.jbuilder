json.array!(@products) do |product|
  json.extract! product, :id, :pid, :name, :item_type, :has_options, :size_type, :size, :has_color, :color, :in_stock, :stock_left, :price, :for_sex, :has_variant, :barcode_path, :image_path, :last_bought, :bought_times, :last_scanned, :scanned_times, :is_active, :ranking
  json.url product_url(product, format: :json)
end
