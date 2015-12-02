class Game < ActiveRecord::Base
	belongs_to :genre
	has_many :playergames
	has_many :users, through: :playergames
end
