class CreateDesserts < ActiveRecord::Migration[5.1]
  def change
    create_table :desserts do |t|
      t.string :title
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
