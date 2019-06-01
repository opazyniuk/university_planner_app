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

ActiveRecord::Schema.define(version: 2019_05_27_075150) do

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.decimal "credits"
    t.string "type_of_discipline"
    t.string "day"
    t.integer "pair"
    t.string "lecturer"
    t.string "learning_type"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disciplines_shedules", id: false, force: :cascade do |t|
    t.integer "discipline_id", null: false
    t.integer "shedule_id", null: false
    t.index [nil], name: "index_disciplines_shedules_on_disciplines_id"
    t.index [nil], name: "index_disciplines_shedules_on_schedules_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.integer "course"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shedules", force: :cascade do |t|
    t.integer "user_id"
    t.integer "group_id"
    t.integer "semestr"
    t.string "study_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["group_id"], name: "index_shedules_on_group_id"
    t.index ["user_id"], name: "index_shedules_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "entity_type", null: false
    t.string "date_of_birth"
    t.integer "group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
