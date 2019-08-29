class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :logo
      t.string :abbrev
      t.string :owner
      t.integer :founded
      t.references :league, foreign_key: true
      t.references :country, foreign_key: true

      t.timestamps
    end
  end
end
