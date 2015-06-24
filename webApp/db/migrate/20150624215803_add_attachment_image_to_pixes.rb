class AddAttachmentImageToPixes < ActiveRecord::Migration
  def self.up
    change_table :pixes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :pixes, :image
  end
end
