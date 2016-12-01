class AddExperienceIdToDemandeurs < ActiveRecord::Migration[5.0]
  def change
    add_column :demandeurs, :experience_id, :integer
  end
end
