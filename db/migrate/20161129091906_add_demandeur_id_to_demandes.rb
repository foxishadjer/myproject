class AddDemandeurIdToDemandes < ActiveRecord::Migration[5.0]
  def change
    add_column :demandes, :demandeur_id, :integer
  end
end
