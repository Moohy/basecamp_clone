class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.references :project, foreign_key: true
      t.references :note, foreign_key: true

      t.timestamps
    end
  end
end
