class RemoveListsIdFromTasks < ActiveRecord::Migration[5.2]
  def change
    remove_column :tasks, :task_id, :integer
  end
end
