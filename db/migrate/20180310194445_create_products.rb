class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :about
      t.string :owner
      t.string :link
      t.string :productimage
      t.references :management, foreign_key: true

      t.timestamps
    end
  end
end
