class AddManagementimageToManagements < ActiveRecord::Migration[5.1]
  def change
    add_column :managements, :managementimage, :string
  end
end
