class FixPlanetAlianceName < ActiveRecord::Migration
  def change
      rename_column :planets, :alliance_id, :aliance_id
  end
end
