class AddImageIdToProducts < ActiveRecord::Migration[6.1]
  def change
    add_column :products, :image_id, :string
  end
end
