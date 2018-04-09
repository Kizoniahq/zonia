class AddFieldsToTeams < ActiveRecord::Migration[5.1]
  def change
    add_column :teams, :bio, :string
    add_column :teams, :position, :string
    add_column :teams, :steaamit, :string
  end
end
