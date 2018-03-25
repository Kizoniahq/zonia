class AddManagementIdToContacts < ActiveRecord::Migration[5.1]
  def change
    add_column :contacts, :management_id, :integer
  end
end
