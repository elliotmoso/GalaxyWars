class Moon < ActiveRecord::Base
  belongs_to :planet
  belongs_to :alliance
  belongs_to :user
  attr_accessible :amoniate, :atmosphere, :carbone, :fissionable_material, :habitables, :mass, :mediumtemp, :metal, :metal_cristal, :n_p, :organicA, :organicB, :organicC, :position, :type, :water
end
