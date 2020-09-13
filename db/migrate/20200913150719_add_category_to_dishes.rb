class AddCategoryToDishes < ActiveRecord::Migration[6.0]
  def change
    add_reference :dishes, :category, foreign_key: true
  end
end
