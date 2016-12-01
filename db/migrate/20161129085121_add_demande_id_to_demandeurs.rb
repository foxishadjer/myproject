class AddDemandeIdToDemandeurs < ActiveRecord::Migration[5.0]
  def change
    add_column :demandeurs, :demande_id, :integer
  end
end
