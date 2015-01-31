class AddAttachmentSecondImgToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :second_img
    end
  end

  def self.down
    remove_attachment :photos, :second_img
  end
end
