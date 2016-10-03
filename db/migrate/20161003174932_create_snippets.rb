class CreateSnippets < ActiveRecord::Migration[5.0]
  def change
    create_table :snippets do |t|
      t.string :content
      t.references :user, foreign_key: true
      t.references :chapter, foreign_key: true
      t.boolean :approved

      t.timestamps
    end
  end
end
