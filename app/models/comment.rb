class Comment < ApplicationRecord

  # a comment belongs to a photo
  belongs_to(:photo, :class_name => "Photo", :foreign_key => "photo_id")

  # a comment belongs to a user
  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")


  #VALIDATIONS
  # user_id: presence
  validates :user_id, :presence => true

  # photo_id: presence
  validates :photo_id, :presence => true

  # body: presence
  validates :body, :presence => true



end
