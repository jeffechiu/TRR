class Championadd < ActiveRecord::Migration[5.2]
  def change
  	add_column :champions, :picture, :string
  end
end
