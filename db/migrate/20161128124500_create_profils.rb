class CreateProfils < ActiveRecord::Migration[5.0]
  def change
    create_table :profils do |t|
      t.string :societe
      t.string :logo
      t.integer :tel
      t.string :email
      t.string :adresse
      t.text :description

      t.timestamps
    end
  end
end
