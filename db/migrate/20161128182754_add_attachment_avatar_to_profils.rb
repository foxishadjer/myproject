class AddAttachmentAvatarToProfils < ActiveRecord::Migration
  def self.up
    change_table :profils do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :profils, :avatar
  end
end
