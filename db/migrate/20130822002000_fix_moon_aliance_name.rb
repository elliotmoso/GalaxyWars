class FixMoonAlianceName < ActiveRecord::Migration
  def change
  	rename_column :moons, :alliance_id, :aliance_id
  end
end
