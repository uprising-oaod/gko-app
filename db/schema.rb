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

ActiveRecord::Schema.define(version: 2022_01_30_062649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "age_groups", force: :cascade do |t|
    t.integer "age"
    t.string "gender"
    t.string "code"
    t.string "name"
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["age", "gender"], name: "index_age_groups_on_age_and_gender", unique: true
    t.index ["code"], name: "index_age_groups_on_code", unique: true
  end

  create_table "indicator_medals", force: :cascade do |t|
    t.bigint "age_group_id", null: false
    t.bigint "indicator_id", null: false
    t.float "min_value"
    t.float "max_value"
    t.bigint "medal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["age_group_id", "indicator_id", "medal_id"], name: "index_indicator_medals_uniqueness", unique: true
    t.index ["age_group_id"], name: "index_indicator_medals_on_age_group_id"
    t.index ["indicator_id"], name: "index_indicator_medals_on_indicator_id"
    t.index ["medal_id"], name: "index_indicator_medals_on_medal_id"
  end

  create_table "indicators", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "title"
    t.string "unit"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_indicators_on_code", unique: true
  end

  create_table "medals", force: :cascade do |t|
    t.string "code"
    t.string "name"
    t.string "title"
    t.integer "weight"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["code"], name: "index_medals_on_code", unique: true
    t.index ["name"], name: "index_medals_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.bigint "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object"
    t.datetime "created_at"
    t.text "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

  add_foreign_key "indicator_medals", "age_groups"
  add_foreign_key "indicator_medals", "indicators"
  add_foreign_key "indicator_medals", "medals"
end
