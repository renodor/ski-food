class AddOrderToDish < ActiveRecord::Migration[6.0]
  def change
    add_column :dishes, :order, :integer
  end
end
