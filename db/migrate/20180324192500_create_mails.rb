class CreateMails < ActiveRecord::Migration[5.1]
  def change
    create_table :mails do |t|
      t.text :body
      t.string :management_id
      t.references :contact, foreign_key: true

      t.timestamps
    end
  end
end
