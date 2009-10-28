class Post < ActiveRecord::Base
  attr_accessible :title, :body, :user_id
  belongs_to :user
  has_one :topic, :class_name => "Post", :foreign_key => "topic_id"
  has_many :replies, :class_name => "Post", :foreign_key => "topic_id"
  def owner
    if user
      return user.display_name
    else
      return "Guest"
    end
  end

end
