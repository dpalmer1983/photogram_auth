class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # a user has many photos
  has_many(:photos, :class_name => "Photo", :foreign_key => "user_id", :dependent => :destroy)

  # a user has many comments
  has_many(:comments, :class_name => "Comment", :foreign_key => "comment_id", :dependent => :destroy)

  # a user has many likes
  has_many(:likes, :class_name => "Like", :foreign_key => "like_id", :dependent => :destroy)

  # a user has many liked photos
  has_many :liked_photos, :through => :likes, :source => :photo

  #VALIDATIONS
  #username: presence, uniqueness
  validates :username, :presence => true, :uniqueness => true


end
