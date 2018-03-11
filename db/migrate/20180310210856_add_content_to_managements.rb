class AddContentToManagements < ActiveRecord::Migration[5.1]
  def change
    add_column :managements, :name, :string
    add_column :managements, :lastname, :string
    add_column :managements, :address, :string
    add_column :managements, :country, :string
    add_column :managements, :position, :text
    add_column :managements, :managmentimage, :string
    add_column :managements, :bio, :string
  end
end
