class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :message
      t.string :country
      t.boolean :lead
      t.string :ideaname
      t.references :management, foreign_key: true

      t.timestamps
    end
  end
end
