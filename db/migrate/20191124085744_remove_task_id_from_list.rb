class RemoveTaskIdFromList < ActiveRecord::Migration[5.2]
  def change
    remove_column :lists, :task_id, :integer
  end
end
