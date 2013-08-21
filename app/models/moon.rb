class Moon < ActiveRecord::Base
  attr_accessible :amoniate, :atmosphere, :carbone, :fissionable_material, :habitables, :mass, :mediumtemp, :metal, :metal_cristal, :n_p, :organicA, :organicB, :organicC, :position, :type, :water
belongs_to :planet
belongs_to :aliance
belongs_to :user
end
