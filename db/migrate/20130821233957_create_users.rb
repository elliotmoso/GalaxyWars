class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.references :aliance

      t.timestamps
    end
    add_index :users, :aliance_id
  end
end
