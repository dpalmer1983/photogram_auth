class Photo < ApplicationRecord

  # a photo belongs to a user
  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")

  # a photo has many comments
  has_many(:comments, :class_name => "Comment", :foreign_key => "comment_id")

  # a photo has many likes
  has_many(:likes, :class_name => "Like", :foreign_key => "like_id")

  # a photo has many fans who like the photo
  has_many :fans, :through => :likes, :source => :user




  
end
