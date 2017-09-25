class CreateDinners < ActiveRecord::Migration[5.1]
  def change
    create_table :dinners do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
