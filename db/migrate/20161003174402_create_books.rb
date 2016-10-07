class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.string :description
      t.integer :author_id
      t.attachment :image

      t.timestamps
    end
  end
end
