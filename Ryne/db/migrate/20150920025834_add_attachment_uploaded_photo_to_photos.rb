class AddAttachmentUploadedPhotoToPhotos < ActiveRecord::Migration
  def self.up
    change_table :photos do |t|
      t.attachment :uploaded_photo
    end
  end

  def self.down
    remove_attachment :photos, :uploaded_photo
  end
end
