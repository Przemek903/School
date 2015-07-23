class Course < ActiveRecord::Base
	
	belongs_to :user
	has_many :participants
	has_many :lessons
end
