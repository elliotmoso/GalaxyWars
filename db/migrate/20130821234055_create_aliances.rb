class CreateAliances < ActiveRecord::Migration
  def change
    create_table :aliances do |t|
      t.string :name

      t.timestamps
    end
  end
end
