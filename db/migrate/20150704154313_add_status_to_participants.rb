class AddStatusToParticipants < ActiveRecord::Migration
  def change
    add_column :participants, :status, :boolean, default: true
  end
end
