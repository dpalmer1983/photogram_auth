class Photo < ApplicationRecord

  #ASSOCIATIONS
  belongs_to :user
  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :fans, :through => :likes, :source => :user

  #VALIDATIONS
  # user_id: presence
  validates :user_id, :presence => true



end
