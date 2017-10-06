class RemoveMenuTypeFromMenuItem < ActiveRecord::Migration[5.1]
  def change
    remove_column :menu_items, :menu_type, :string
  end
end
