class CreateChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :chapters do |t|
      t.references :book, foreign_key: true
      t.string :title
      t.text :description
      t.boolean :approved, default: false
      t.integer :author_id

      t.timestamps
    end
  end
end
