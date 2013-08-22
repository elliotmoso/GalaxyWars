class Moon < ActiveRecord::Base
  belongs_to :planet
  belongs_to :aliance
  belongs_to :user
  attr_accessible :planet_id, :user_id, :aliance_id, :amoniate, :atmosphere, :carbone, :fissionable_material, :habitables, :mass, :mediumtemp, :metal, :metal_cristal, :n_p, :organicA, :organicB, :organicC, :position, :tipo, :water
end
