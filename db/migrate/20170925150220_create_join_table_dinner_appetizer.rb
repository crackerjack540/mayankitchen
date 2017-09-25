class CreateJoinTableDinnerAppetizer < ActiveRecord::Migration[5.1]
  def change
    create_join_table :dinners, :appetizers do |t|
      # t.index [:dinner_id, :appetizer_id]
      # t.index [:appetizer_id, :dinner_id]
    end
  end
end
