class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.text :description
      t.string :price
      t.string :menu_type
      t.string :food_type

      t.timestamps
    end
  end
end
