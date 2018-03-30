class AddEmailToComments < ActiveRecord::Migration[5.1]
  def change
    add_column :comments, :email, :string
  end
end
