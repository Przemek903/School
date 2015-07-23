class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description
      t.string :discussedTopic
      t.text :mainKnowledge
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
