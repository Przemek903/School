class AddCorrectAnswerToTestQuestions < ActiveRecord::Migration
  def change
    add_column :test_questions, :correctAnswer, :integer
  end
end
