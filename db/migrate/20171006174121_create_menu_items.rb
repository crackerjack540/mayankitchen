class CreateMenuItems < ActiveRecord::Migration[5.1]
  def change
    create_table :menu_items do |t|
      t.string :title
      t.text :description
      t.string :price
      t.string :type
      t.string :label

      t.references :menu_item

      t.timestamps
    end
  end
end
