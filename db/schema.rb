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

ActiveRecord::Schema.define(version: 2018_11_25_161855) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_levels", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "addresses", force: :cascade do |t|
    t.string "public_place"
    t.string "number"
    t.string "neighborhood"
    t.string "complement"
    t.string "zip_code"
    t.string "city"
    t.string "federative_unit"
    t.text "reference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
  end

  create_table "anonymous_denounciations", force: :cascade do |t|
    t.date "occurrence_date"
    t.string "uncertain_date"
    t.string "location_type"
    t.text "report"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_anonymous_denounciations_on_address_id"
  end

  create_table "archives", force: :cascade do |t|
    t.string "name"
    t.bigint "category_id"
    t.text "description"
    t.string "arch_file_name"
    t.string "arch_content_type"
    t.bigint "arch_file_size"
    t.datetime "arch_updated_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_archives_on_category_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "link"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentaries", force: :cascade do |t|
    t.date "date"
    t.text "content"
    t.bigint "publication_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["publication_id"], name: "index_comentaries_on_publication_id"
  end

  create_table "doubts", force: :cascade do |t|
    t.text "answer"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_doubts_on_question_id"
  end

  create_table "institutes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "note"
    t.string "email"
    t.text "attendance_locals"
    t.bigint "phone_id"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_institutes_on_address_id"
    t.index ["phone_id"], name: "index_institutes_on_phone_id"
  end

  create_table "occurrence_bulletins", force: :cascade do |t|
    t.date "occurrence_date"
    t.string "uncertain_date"
    t.string "location_type"
    t.text "report"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_occurrence_bulletins_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.date "birth_date"
    t.string "email"
    t.bigint "phone_id"
    t.bigint "address_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_people_on_address_id"
    t.index ["phone_id"], name: "index_people_on_phone_id"
  end

  create_table "phones", force: :cascade do |t|
    t.integer "country_code"
    t.integer "ddd"
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "publications", force: :cascade do |t|
    t.string "title"
    t.date "date"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "ask"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string "name"
    t.text "link"
    t.boolean "status"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.bigint "access_level_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["access_level_id"], name: "index_users_on_access_level_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["person_id"], name: "index_users_on_person_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username", unique: true
  end

  add_foreign_key "archives", "categories"
  add_foreign_key "comentaries", "publications"
  add_foreign_key "doubts", "questions"
  add_foreign_key "institutes", "phones"
  add_foreign_key "occurrence_bulletins", "people"
  add_foreign_key "people", "phones"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "users", "people"
end
