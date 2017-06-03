class Like < ApplicationRecord

  #ASSOCIATIONS
  belongs_to :user
  belongs_to :photo


  #VALIDATIONS

  #  user_id: presence, uniqueness in combination with photo
  validates :user_id, :presence => true, :uniqueness => { :scope => :photo }

  #  photo_id: presence
  validates :photo_id, :presence => true


end
