class CreateUserChapters < ActiveRecord::Migration[5.0]
  def change
    create_table :user_chapters do |t|
      t.references :user, foreign_key: true
      t.references :chapter, foreign_key: true
      t.integer :vote_choice, default: 0

      t.timestamps
    end
  end
end
