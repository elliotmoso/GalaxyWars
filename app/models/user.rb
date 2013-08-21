class User < ActiveRecord::Base
  belongs_to :aliance
  attr_accessible :name, :password
end
