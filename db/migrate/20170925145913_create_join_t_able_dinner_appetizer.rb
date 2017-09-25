class CreateJoinTAbleDinnerAppetizer < ActiveRecord::Migration[5.1]
  def change
    create_table :join_t_able_dinner_appetizers do |t|
      t.string :dinner
      t.string :appetizer
    end
  end
end
