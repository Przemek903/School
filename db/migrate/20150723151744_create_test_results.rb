class CreateTestResults < ActiveRecord::Migration
  def change
    create_table :test_results do |t|
      t.integer :test_id
      t.integer :participant_id
      t.integer :grade

      t.timestamps null: false
    end
  end
end
