class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :value

      t.timestamps
    end
  end
end
