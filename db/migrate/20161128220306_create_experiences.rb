class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :nom_entreprise
      t.text :titre_poste
      t.date :date_d
      t.date :date_f

      t.timestamps
    end
  end
end
