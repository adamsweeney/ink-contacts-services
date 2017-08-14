class AddAttachmentAvatarToContacts < ActiveRecord::Migration[5.1]
  def change
    change_table :contacts do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :contacts, :avatar
  end
end
