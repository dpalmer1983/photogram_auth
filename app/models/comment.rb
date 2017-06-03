class Comment < ApplicationRecord

  #ASSOCIATIONS
  belongs_to :user
  belongs_to :photo


  #VALIDATIONS
  # user_id: presence
  validates :user_id, :presence => true

  # photo_id: presence
  validates :photo_id, :presence => true

  # body: presence
  validates :body, :presence => true



end
