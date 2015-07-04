class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :user_id
      t.string :course_id
      t.string :grade

      t.timestamps null: false
    end
  end
end
