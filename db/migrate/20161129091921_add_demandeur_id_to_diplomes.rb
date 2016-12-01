class AddDemandeurIdToDiplomes < ActiveRecord::Migration[5.0]
  def change
    add_column :diplomes, :demandeur_id, :integer
  end
end
