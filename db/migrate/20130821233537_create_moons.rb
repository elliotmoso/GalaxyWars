class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.references :planet
      t.decimal :position
      t.decimal :mass
      t.integer :type
      t.integer :atmosphere
      t.integer :metal
      t.integer :water
      t.integer :amoniate
      t.integer :carbone
      t.integer :n_p
      t.integer :fissionable_material
      t.integer :mediumtemp
      t.references :alliance
      t.references :user
      t.integer :organicA
      t.integer :organicB
      t.integer :organicC
      t.integer :metal_cristal
      t.integer :habitables

      t.timestamps
    end
    add_index :moons, :planet_id
    add_index :moons, :alliance_id
    add_index :moons, :user_id
  end
end
