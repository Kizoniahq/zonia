class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :skill_1
      t.string :skill_2
      t.string :skill_others
      t.string :avatar
      t.string :github
      t.string :medium
      t.string :twitter
      t.string :cv
      t.references :managements, foreign_key: true

      t.timestamps
    end
  end
end
