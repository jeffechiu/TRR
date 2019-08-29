class GameAdditions < ActiveRecord::Migration[5.2]
  def change
  	add_column :games, :t1, :reference
  	add_column :games, :t2, :reference
  	add_column :games, :t1TOP, :reference
  	add_column :games, :t1JG, :reference
  	add_column :games, :tlMID, :reference
  	add_column :games, :t1AD, :reference
  	add_column :games, :t1SUP, :reference
  	add_column :games, :t2TOP, :reference
  	add_column :games, :t2JG, :reference
  	add_column :games, :t2MID, :reference
  	add_column :games, :t2AD, :reference
  	add_column :games, :t2SUP, :reference
  end
end
