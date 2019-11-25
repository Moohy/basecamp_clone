class RemoveProjectIdAndNoteIdFromUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :project_id, :integer
    remove_column :users, :note_id, :integer
  end
end
