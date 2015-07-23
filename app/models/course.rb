class Course < ActiveRecord::Base
	
	belongs_to  :user
	has_many 	:participants, dependent: :destroy
	has_many 	:lessons, dependent: :destroy
end
