class AddOrderToCategory < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :order, :integer
  end
end
