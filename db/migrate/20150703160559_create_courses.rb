class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.string :photo
      t.string :syllabus
      t.string :categories
      t.string :recommendedBackground
      t.string :language
      t.string :timeOfStudy
      t.boolean :active, default: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
