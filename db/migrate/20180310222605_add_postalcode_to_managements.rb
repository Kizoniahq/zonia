class AddPostalcodeToManagements < ActiveRecord::Migration[5.1]
  def change
    add_column :managements, :postalcode, :string
  end
end
