class CreateOffres < ActiveRecord::Migration[5.0]
  def change
    create_table :offres do |t|
      t.string :poste
      t.text :descripotion_p
      t.string :lieu
      t.text :ceitere
      t.date :date_pub
      t.string :duree

      t.timestamps
    end
  end
end
