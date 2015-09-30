class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :sport
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
