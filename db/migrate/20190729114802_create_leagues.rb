class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :name
      t.string :logo
      t.string :abbrev
      t.string :description

      t.timestamps
    end
  end
end
