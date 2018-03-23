class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :Email
      t.string :ideaname
      t.text :message

      t.timestamps
    end
  end
end
