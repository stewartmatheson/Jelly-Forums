class User < ActiveRecord::Base
  #attr_accessible :display_name, :email, :password
  acts_as_authentic
end
