class Lesson < ActiveRecord::Base
	
	belongs_to :course
	has_one 	:test, dependent: :destroy
end
