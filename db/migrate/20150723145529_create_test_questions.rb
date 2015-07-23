class CreateTestQuestions < ActiveRecord::Migration
  def change
    create_table :test_questions do |t|
      t.integer :test_id
      t.text :question
      t.string :answerA
      t.string :answerB
      t.string :answerC
      t.string :answerD

      t.timestamps null: false
    end
  end
end
