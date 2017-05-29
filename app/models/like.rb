class Like < ApplicationRecord

  # like belongs to a user
  belongs_to(:user, :class_name => "User", :foreign_key => "user_id")

  # a like belongs to a photo
  belongs_to(:photo, :class_name => "Photo", :foreign_key => "photo_id")


  #VALIDATIONS

  #  user_id: presence, uniqueness in combination with photo
  validates :user_id, :presence => true, :uniqueness => { :scope => :photo }

  #  photo_id: presence
  validates :photo_id, :presence => true


end
