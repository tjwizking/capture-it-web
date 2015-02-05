class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :pid, limit: 15
      t.string :name, limit: 30
      t.string :item_type, limit: 3
      t.string :has_options, limit: 1
      t.string :size_type, limit: 3
      t.string :size, limit: 11
      t.string :has_color, limit: 1
      t.string :color, limit: 20
      t.string :in_stock, limit: 1
      t.integer :stock_left
      t.integer :price
      t.string :for_sex, limit: 1
      t.string :has_variant, limit: 1
      t.attachment :barcode_path
      t.attachment :image_path
      t.string :last_bought, limit: 25
      t.integer :bought_times
      t.string :last_scanned, limit: 25
      t.integer :scanned_times
      t.string :is_active, limit: 1
      t.integer :ranking

      t.timestamps
    end
  end
end
