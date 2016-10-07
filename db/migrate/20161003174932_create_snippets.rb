class CreateSnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :snippets do |t|
      t.references :chapter, foreign_key: true
      t.boolean :approved, default: false
      t.integer :author_id
      t.string :content

      t.timestamps
    end
  end
end
