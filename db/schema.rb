# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161003184154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "genre"
    t.string   "description"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "chapters", force: :cascade do |t|
    t.string   "title"
    t.integer  "book_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "description"
    t.index ["book_id"], name: "index_chapters_on_book_id", using: :btree
  end

  create_table "snippets", force: :cascade do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "chapter_id"
    t.boolean  "approved"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chapter_id"], name: "index_snippets_on_chapter_id", using: :btree
    t.index ["user_id"], name: "index_snippets_on_user_id", using: :btree
  end

  create_table "user_books", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "book_id"
    t.boolean  "author"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_user_books_on_book_id", using: :btree
    t.index ["user_id"], name: "index_user_books_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_foreign_key "chapters", "books"
  add_foreign_key "snippets", "chapters"
  add_foreign_key "snippets", "users"
  add_foreign_key "user_books", "books"
  add_foreign_key "user_books", "users"
end
