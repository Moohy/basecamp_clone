class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.text :description
      t.boolean :done
      t.datetime :due
      t.references :taks, foreign_key: true

      t.timestamps
    end
  end
end
