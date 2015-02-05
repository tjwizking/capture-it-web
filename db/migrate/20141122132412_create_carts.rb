class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.references :product, index: true
      t.string :quantity
      t.string :session_id

      t.timestamps
    end
  end
end
