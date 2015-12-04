class Subreddit < ActiveRecord::Base
  has_and_belongs_to_many :redditaccounts
  
  has_many :posts 
  has_many :users, through: :posts
end
