class PlayerGameAdditions < ActiveRecord::Migration[5.2]
  def change
  	add_column :player_games, :elders, :integer
  	add_column :player_games, :minions, :integer
  	add_column :player_games, :monstersownjg, :integer
  	add_column :player_games, :monstersenemyjg, :integer
  end
end
