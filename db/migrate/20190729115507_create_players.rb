class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :summoner
      t.string :position
      t.string :portrait
      t.string :fname
      t.string :lname
      t.integer :age
      t.references :country, foreign_key: true
      t.references :team, foreign_key: true

      t.timestamps
    end
  end
end
