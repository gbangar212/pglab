# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_09_172905) do

  create_table "ecassessments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "ans1"
    t.integer "ans2"
    t.integer "ans3"
    t.integer "ans4"
    t.integer "ans5"
    t.integer "ans6"
    t.integer "ans7"
    t.integer "ans8"
    t.integer "ans9"
    t.integer "ans10"
    t.integer "ans11"
    t.integer "ans12"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_ecassessments_on_user_id"
  end

  create_table "ecscores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "awareness"
    t.integer "control"
    t.integer "diagnosis"
    t.integer "response"
    t.integer "total"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_ecscores_on_user_id"
  end

  create_table "firos", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "ans1"
    t.integer "ans2"
    t.integer "ans3"
    t.integer "ans4"
    t.integer "ans5"
    t.integer "ans6"
    t.integer "ans7"
    t.integer "ans8"
    t.integer "ans9"
    t.integer "ans10"
    t.integer "ans11"
    t.integer "ans12"
    t.integer "ans13"
    t.integer "ans14"
    t.integer "ans15"
    t.integer "ans16"
    t.integer "ans17"
    t.integer "ans18"
    t.integer "ans19"
    t.integer "ans20"
    t.integer "ans21"
    t.integer "ans22"
    t.integer "ans23"
    t.integer "ans24"
    t.integer "ans25"
    t.integer "ans26"
    t.integer "ans27"
    t.integer "ans28"
    t.integer "ans29"
    t.integer "ans30"
    t.integer "ans31"
    t.integer "ans32"
    t.integer "ans33"
    t.integer "ans34"
    t.integer "ans35"
    t.integer "ans36"
    t.integer "ans37"
    t.integer "ans38"
    t.integer "ans39"
    t.integer "ans40"
    t.integer "ans41"
    t.integer "ans42"
    t.integer "ans43"
    t.integer "ans44"
    t.integer "ans45"
    t.integer "ans46"
    t.integer "ans47"
    t.integer "ans48"
    t.integer "ans49"
    t.integer "ans50"
    t.integer "ans51"
    t.integer "ans52"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ans53"
    t.integer "ans54"
    t.index ["user_id"], name: "index_firos_on_user_id"
  end

  create_table "firoscores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "ei"
    t.integer "ec"
    t.integer "ea"
    t.integer "wi"
    t.integer "wc"
    t.integer "wa"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_firoscores_on_user_id"
  end

  create_table "joharis", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "ans1a"
    t.integer "ans1b"
    t.integer "ans2a"
    t.integer "ans2b"
    t.integer "ans3a"
    t.integer "ans3b"
    t.integer "ans4a"
    t.integer "ans4b"
    t.integer "ans5a"
    t.integer "ans5b"
    t.integer "ans6a"
    t.integer "ans6b"
    t.integer "ans7a"
    t.integer "ans7b"
    t.integer "ans8a"
    t.integer "ans8b"
    t.integer "ans9a"
    t.integer "ans9b"
    t.integer "ans10a"
    t.integer "ans10b"
    t.integer "ans11a"
    t.integer "ans11b"
    t.integer "ans12a"
    t.integer "ans12b"
    t.integer "ans13a"
    t.integer "ans13b"
    t.integer "ans14a"
    t.integer "ans14b"
    t.integer "ans15a"
    t.integer "ans15b"
    t.integer "ans16a"
    t.integer "ans16b"
    t.integer "ans17a"
    t.integer "ans17b"
    t.integer "ans18a"
    t.integer "ans18b"
    t.integer "ans19a"
    t.integer "ans19b"
    t.integer "ans20a"
    t.integer "ans20b"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_joharis_on_user_id"
  end

  create_table "johariscores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "askfeedback"
    t.integer "givefeedback"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_johariscores_on_user_id"
  end

  create_table "mbtinewscores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "scorei"
    t.integer "scoree"
    t.integer "scoren"
    t.integer "scores"
    t.integer "scoret"
    t.integer "scoref"
    t.integer "scorep"
    t.integer "scorej"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_mbtinewscores_on_user_id"
  end

  create_table "mbtis", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "ans1a"
    t.integer "ans1b"
    t.integer "ans2a"
    t.integer "ans2b"
    t.integer "ans3a"
    t.integer "ans3b"
    t.integer "ans4a"
    t.integer "ans4b"
    t.integer "ans5a"
    t.integer "ans5b"
    t.integer "ans6a"
    t.integer "ans6b"
    t.integer "ans7a"
    t.integer "ans7b"
    t.integer "ans8a"
    t.integer "ans8b"
    t.integer "ans9a"
    t.integer "ans9b"
    t.integer "ans10a"
    t.integer "ans10b"
    t.integer "ans11a"
    t.integer "ans11b"
    t.integer "ans12a"
    t.integer "ans12b"
    t.integer "ans13a"
    t.integer "ans13b"
    t.integer "ans14a"
    t.integer "ans14b"
    t.integer "ans15a"
    t.integer "ans15b"
    t.integer "ans16a"
    t.integer "ans16b"
    t.integer "ans17a"
    t.integer "ans17b"
    t.integer "ans18a"
    t.integer "ans18b"
    t.integer "ans19a"
    t.integer "ans19b"
    t.integer "ans20a"
    t.integer "ans20b"
    t.integer "ans21a"
    t.integer "ans21b"
    t.integer "ans22a"
    t.integer "ans22b"
    t.integer "ans23a"
    t.integer "ans23b"
    t.integer "ans24a"
    t.integer "ans24b"
    t.integer "ans25a"
    t.integer "ans25b"
    t.integer "ans26a"
    t.integer "ans26b"
    t.integer "ans27a"
    t.integer "ans27b"
    t.integer "ans28a"
    t.integer "ans28b"
    t.integer "ans29a"
    t.integer "ans29b"
    t.integer "ans30a"
    t.integer "ans30b"
    t.integer "ans31a"
    t.integer "ans31b"
    t.integer "ans32a"
    t.integer "ans32b"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_mbtis_on_user_id"
  end

  create_table "mbtiscores", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "ie"
    t.integer "ns"
    t.integer "tf"
    t.integer "pj"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_mbtiscores_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "roll"
    t.string "name"
    t.string "entry"
    t.string "spec"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
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

  add_foreign_key "ecassessments", "users"
  add_foreign_key "ecscores", "users"
  add_foreign_key "firos", "users"
  add_foreign_key "firoscores", "users"
  add_foreign_key "joharis", "users"
  add_foreign_key "johariscores", "users"
  add_foreign_key "mbtinewscores", "users"
  add_foreign_key "mbtis", "users"
  add_foreign_key "mbtiscores", "users"
  add_foreign_key "profiles", "users"
end
