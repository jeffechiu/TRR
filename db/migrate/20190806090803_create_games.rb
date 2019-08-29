class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :patch
      t.float :length
      t.integer :week
      t.string :number

      t.timestamps
    end
  end
end
