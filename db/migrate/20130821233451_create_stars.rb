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
      t.references :aliance
      t.references :user
      t.text :near
      t.decimal :intern_line
      t.decimal :hot_line
      t.decimal :snow_line
      t.decimal :cool_line

      t.timestamps
    end
    add_index :stars, :aliance_id
    add_index :stars, :user_id
  end
end
