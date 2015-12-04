class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_one :redditaccount  

  has_many :posts
  has_many :subreddits, through: :posts

  has_many :conversations, :foreign_key => :sender_id

end
