class CreateDemandeurs < ActiveRecord::Migration[5.0]
  def change
    create_table :demandeurs do |t|
      t.string :nom
      t.string :prenom
      t.integer :tel
      t.string :email
      t.string :adresse
      t.text :description

      t.timestamps
    end
  end
end
