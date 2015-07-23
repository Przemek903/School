class Test < ActiveRecord::Base

	belongs_to  :lesson
	has_many 	:test_questions,  dependent: :destroy
	has_many	:test_results, dependent: :destroy
end
