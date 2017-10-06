class DropTableMenuItem < ActiveRecord::Migration[5.1]
  def change
  	drop_table :menu_item
  end
end
