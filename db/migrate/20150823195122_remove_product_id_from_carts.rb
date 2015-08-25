class RemoveProductIdFromCarts < ActiveRecord::Migration
  def change
    remove_column :carts, :product_id, :integer
    remove_column :carts, :quantity, :integer
  end
end
