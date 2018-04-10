class AddDeveloperToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :developer, :string
  end
end
