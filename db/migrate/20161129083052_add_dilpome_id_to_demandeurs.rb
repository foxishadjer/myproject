class AddDilpomeIdToDemandeurs < ActiveRecord::Migration[5.0]
  def change
    add_column :demandeurs, :diplome_id, :integer
  end
end
