class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :address
      t.string :city
      t.datetime :scheduled_at
      t.datetime :started_at
      t.datetime :ended_at
      t.boolean :is_template

      t.timestamps
    end
  end
end
