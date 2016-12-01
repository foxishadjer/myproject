class AddSecteurIdToProfils < ActiveRecord::Migration[5.0]
  def change
    add_column :profils, :secteur_id, :integer
  end
end
