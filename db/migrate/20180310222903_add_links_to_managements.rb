class AddLinksToManagements < ActiveRecord::Migration[5.1]
  def change
    add_column :managements, :links, :string
  end
end
