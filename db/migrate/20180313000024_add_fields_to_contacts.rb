class AddFieldsToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :country, :string
    add_column :contacts, :phone, :string
  end
end
