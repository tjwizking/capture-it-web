class AddStatusToCart < ActiveRecord::Migration
  def change
    add_column :carts, :status, :string, limit: 1,:default => 0
  end
end
