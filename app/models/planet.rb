class Planet < ActiveRecord::Base
  belongs_to :star
  belongs_to :alliance
  belongs_to :user
  has_many :moons
 attr_accessible :amoniate, :atmosphere, :carbone, :fissionable_material, :habitables, :mass, :mediumtemp, :metal, :metal_cristal, :n_p, :organicA, :organicB, :organicC, :position, :type, :water
end
