class ChangeDescriptionDatatype < ActiveRecord::Migration[6.1]
  def change
    change_column :products, :description, :string
  end
end
