class AddColumnToList < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :project_id, :integer
  end
end
