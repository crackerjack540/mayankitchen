class CreateJoinTableDinnerTapas < ActiveRecord::Migration[5.1]
  def change
    create_join_table :dinners, :tapas do |t|
      # t.index [:dinner_id, :tapa_id]
      # t.index [:tapa_id, :dinner_id]
    end
  end
end
