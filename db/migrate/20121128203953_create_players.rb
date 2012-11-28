class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :fname
      t.string :lname
      t.string :phone1
      t.string :phone2
      t.string :email
      t.datetime :birthdate
      t.string :nickname
      t.boolean :active?

      t.timestamps
    end
  end
end
