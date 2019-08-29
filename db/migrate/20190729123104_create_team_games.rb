class CreateTeamGames < ActiveRecord::Migration[5.2]
  def change
    create_table :team_games do |t|
      t.references :team, foreign_key: true
      t.references :game, foreign_key: true
      t.integer :kills
      t.integer :deaths
      t.integer :assists
      t.integer :fbkill
      t.integer :fbdeath
      t.integer :fbassist
      t.integer :drakes
      t.integer :herald
      t.integer :barons
      t.integer :elders
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
      t.string :side
      t.references :pick1, foreign_key: true
      t.references :pick2, foreign_key: true
      t.references :pick3, foreign_key: true
      t.references :pick4, foreign_key: true
      t.references :pick5, foreign_key: true
      t.references :ban1, foreign_key: true
      t.references :ban2, foreign_key: true
      t.references :ban3, foreign_key: true
      t.references :ban4, foreign_key: true
      t.references :ban5, foreign_key: true
      t.string :result
      t.integer :towers
      t.integer :firsttower
      t.float :fttime
      t.integer :firstmid
      t.integer :first3towers
      t.integer :minions
      t.integer :monstersownjg
      t.integer :monstersenemyjg

      t.timestamps
    end
  end
end
