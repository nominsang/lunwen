# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_07_01_030841) do
  create_table "abstracts", force: :cascade do |t|
    t.integer "language_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dissertation_id", null: false
    t.index ["dissertation_id"], name: "index_abstracts_on_dissertation_id"
    t.index ["language_id"], name: "index_abstracts_on_language_id"
  end

  create_table "alternative_titles", force: :cascade do |t|
    t.integer "language_id", null: false
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dissertation_id", null: false
    t.index ["dissertation_id"], name: "index_alternative_titles_on_dissertation_id"
    t.index ["language_id"], name: "index_alternative_titles_on_language_id"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contributors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "sex"
    t.string "professional_title"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "creators", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "sex"
    t.string "student_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dissertations", force: :cascade do |t|
    t.string "title"
    t.integer "language_id", null: false
    t.date "date_submited"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_dissertations_on_language_id"
  end

  create_table "keywords", force: :cascade do |t|
    t.integer "language_id", null: false
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "dissertation_id", null: false
    t.index ["dissertation_id"], name: "index_keywords_on_dissertation_id"
    t.index ["language_id"], name: "index_keywords_on_language_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "title"
    t.string "code"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "abstracts", "dissertations"
  add_foreign_key "abstracts", "languages"
  add_foreign_key "alternative_titles", "dissertations"
  add_foreign_key "alternative_titles", "languages"
  add_foreign_key "dissertations", "languages"
  add_foreign_key "keywords", "dissertations"
  add_foreign_key "keywords", "languages"
end
