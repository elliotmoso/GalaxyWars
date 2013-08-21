class CreateStars < ActiveRecord::Migration
  def change
    create_table :stars do |t|
      t.string :name
      t.integer :x
      t.integer :y
      t.integer :z
      t.float :mass
      t.decimal :radium
      t.decimal :luminosity
      t.integer :temp
      t.integer :color
      t.string :clase
      t.belongs_to :user
      t.belongs_to :aliance
      t.text :near
      t.decimal :intern_line
      t.decimal :hot_line
      t.decimal :snow_line
      t.decimal :cool_line

      t.timestamps
    end
  end
end
