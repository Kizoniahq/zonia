class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
        t.string :details
        t.string :title
        t.string :client
        t.string :projectimage
        t.string :links
        t.integer :management_id, foreign_key: true
      t.timestamps
    end
  end
end
