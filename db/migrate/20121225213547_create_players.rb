class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :fname
      t.string :lname
      t.string :nickname
      t.string :phone
      t.string :email
      t.boolean :is_active

      t.timestamps
    end
  end
end
