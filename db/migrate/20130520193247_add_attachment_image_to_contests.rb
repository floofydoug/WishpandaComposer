class AddAttachmentImageToContests < ActiveRecord::Migration
  def self.up
    change_table :contests do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :contests, :image
  end
end
