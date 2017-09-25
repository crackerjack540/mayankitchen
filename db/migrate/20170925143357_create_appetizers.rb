class CreateAppetizers < ActiveRecord::Migration[5.1]
  def change
    create_table :appetizers do |t|
      t.string :title
      t.text :description
      t.text :price

      t.timestamps
    end
  end
end
