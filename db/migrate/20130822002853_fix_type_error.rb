class FixTypeError < ActiveRecord::Migration
  def change
	rename_column :planets, :type, :tipo
	rename_column :moons, :type, :tipo
  end
end
