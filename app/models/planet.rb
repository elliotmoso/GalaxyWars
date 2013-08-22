class Planet < ActiveRecord::Base
  belongs_to :star
  belongs_to :aliance
  belongs_to :user
  has_many :moons
 attr_accessible :star_id,:user,:aliance, :amoniate, :atmosphere, :carbone, :fissionable_material, :habitables, :mass, :mediumtemp, :metal, :metal_cristal, :n_p, :organicA, :organicB, :organicC, :position, :tipo, :water
  validates :star,presence: true

end
