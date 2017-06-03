class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  #ASSOCIATIONS
  has_many :photos, :dependent => :destroy
  has_many :comments, :dependent => :destroy
  has_many :likes, :dependent => :destroy
  has_many :liked_photos, :through => :likes, :source => :photo

  #VALIDATIONS
  #username: presence, uniqueness
  validates :username, :presence => true, :uniqueness => true


end
