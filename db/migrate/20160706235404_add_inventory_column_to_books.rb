class AddInventoryColumnToBooks < ActiveRecord::Migration
  def change
    add_column :books, :inventory, :integer, default: 1
  end
end
