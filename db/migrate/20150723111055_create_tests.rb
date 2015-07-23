class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :lesson_id

      t.timestamps null: false
    end
  end
end
