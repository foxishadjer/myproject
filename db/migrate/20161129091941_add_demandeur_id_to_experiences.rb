class AddDemandeurIdToExperiences < ActiveRecord::Migration[5.0]
  def change
    add_column :experiences, :demandeur_id, :integer
  end
end
