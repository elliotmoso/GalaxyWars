class Star < ActiveRecord::Base
  belongs_to :aliance
  belongs_to :user
  has_many :planets
  attr_accessible :aliance_id,:user_id, :clase, :color, :cool_line, :hot_line, :intern_line, :luminosity, :mass, :name, :near, :radium, :snow_line, :temp, :x, :y, :z

  validates :name, uniqueness: true
end
