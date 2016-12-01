class CreateDiplomes < ActiveRecord::Migration[5.0]
  def change
    create_table :diplomes do |t|
      t.string :titre_diplome
      t.date :date_obtention
      t.string :universite

      t.timestamps
    end
  end
end
