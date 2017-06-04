class Comment < ApplicationRecord

  #ASSOCIATIONS
  belongs_to :photo, :class_name => "Photo", :foreign_key => "photo_id"

   belongs_to :user, :class_name => "User", :foreign_key => "user_id"

  #VALIDATIONS
  # user_id: presence
  validates :user_id, :presence => true

  # photo_id: presence
  validates :photo_id, :presence => true

  # body: presence
  validates :body, :presence => true



end
