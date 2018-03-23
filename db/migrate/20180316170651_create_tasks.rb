class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.text :body
      t.integer :project_id
      t.integer :management_id
      t.string :expected
      t.boolean :done

      t.timestamps
    end
  end
end
