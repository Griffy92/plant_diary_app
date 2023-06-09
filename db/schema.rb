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

ActiveRecord::Schema.define(version: 2023_04_27_025122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "journals", force: :cascade do |t|
    t.text "name"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "discord"
  end

  create_table "journals_plants", id: false, force: :cascade do |t|
    t.integer "plant_id"
    t.integer "journal_id"
  end

  create_table "plants", force: :cascade do |t|
    t.text "name"
    t.text "species"
    t.date "last_watered"
    t.integer "cycle"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "nickname"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
