class Photo < ApplicationRecord

  #ASSOCIATIONS
  belongs_to :user, :class_name => "User", :foreign_key => "user_id"

  has_many :comments, :class_name => "Comment", :foreign_key => "photo_id"

  has_many :likes, :class_name => "Like", :foreign_key => "photo_id"

  has_many :fans, :through => :likes, :source => :user

  #VALIDATIONS
  # user_id: presence
  validates :user_id, :presence => true



end
