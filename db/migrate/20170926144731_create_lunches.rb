class CreateLunches < ActiveRecord::Migration[5.1]
  def change
    create_table :lunches do |t|
      t.string :t
      t.string :title
      t.text :description
      t.string :price

      t.timestamps
    end
  end
end
