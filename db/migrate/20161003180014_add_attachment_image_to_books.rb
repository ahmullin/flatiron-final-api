class AddAttachmentImageToBooks < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.attachment :image
    end
  end
end
