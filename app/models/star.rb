class Star < ActiveRecord::Base
  attr_accessible :clase, :color, :cool_line, :hot_line, :intern_line, :luminosity, :mass, :name, :near, :radium, :snow_line, :temp, :x, :y, :z
has_many :planets
belongs_to :aliance
belongs_to :user
end
