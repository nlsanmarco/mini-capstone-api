class AddInventorytoProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :inventory, :integer, default: 1
  end
end
