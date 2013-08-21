class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.belongs_to :planet
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
      t.belongs_to :aliance
      t.belongs_to :user
      t.integer :organicA
      t.integer :organicB
      t.integer :organicC
      t.integer :metal_cristal
      t.integer :habitables

      t.timestamps
    end
  end
end
