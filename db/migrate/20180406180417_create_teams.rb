class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :skill_1
      t.string :skill_2
      t.string :skill_others
      t.string :github
      t.string :medium
      t.string :twitter
      t.string :cv
      t.integer :management_id

      t.timestamps
    end
  end
end
