class AddIngredientsToDish < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :ingredients, :text, array: true, default: []
  end
end
