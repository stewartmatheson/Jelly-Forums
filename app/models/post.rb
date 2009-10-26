class Post < ActiveRecord::Base
  attr_accessible :title, :body, :user_id
end
