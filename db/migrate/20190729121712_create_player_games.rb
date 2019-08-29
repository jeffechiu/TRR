class CreatePlayerGames < ActiveRecord::Migration[5.2]
  def change
    create_table :player_games do |t|
      t.references :player, foreign_key: true
      t.references :game, foreign_key: true
      t.references :champion, foreign_key: true
      t.integer :kills
      t.integer :deaths
      t.integer :assists
      t.integer :doubles
      t.integer :triples
      t.integer :quadras
      t.integer :pentas
      t.integer :fbkill
      t.integer :fbdeath
      t.integer :fbassist
      t.integer :drakes
      t.integer :herald
      t.integer :barons
      t.float :dmg
      t.integer :gold
      t.integer :goldspent
      t.integer :wardsplaced
      t.integer :wardskilled
      t.integer :viswards
      t.integer :viswardbuys
      t.integer :cs10
      t.integer :oppcs10
      t.integer :gold10
      t.integer :oppgold10
      t.integer :gold15
      t.integer :oppgold15
      t.integer :xp10
      t.integer :oppxp10

      t.timestamps
    end
  end
end
