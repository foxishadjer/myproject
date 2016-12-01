class AddProfilIdToOffres < ActiveRecord::Migration[5.0]
  def change
    add_column :offres, :profil_id, :integer
  end
end
