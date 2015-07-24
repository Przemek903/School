class ChangeCorrectAnswerFormatInTestQuestionTable < ActiveRecord::Migration
  def change
	change_column :test_questions, :correctAnswer, :string
  end
end
