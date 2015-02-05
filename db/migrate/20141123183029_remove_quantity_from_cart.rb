class RemoveQuantityFromCart < ActiveRecord::Migration
  def change
    remove_column :carts, :quantity, :string
  end
end
