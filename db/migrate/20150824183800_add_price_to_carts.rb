class AddPriceToCarts < ActiveRecord::Migration
  def change
    add_column :carts, :price, :integer, default: 0
    add_column :carts, :name, :string, default: "Shopping Cart"
  end
end
