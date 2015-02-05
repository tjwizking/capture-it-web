class AddBrandNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :BrandName, :string, limit: 25
  end
end
