class CreateDips < ActiveRecord::Migration[5.1]
  def change
    create_table :dips do |t|
      t.string :title
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
