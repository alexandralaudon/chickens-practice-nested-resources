# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150314224129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chickens", force: :cascade do |t|
    t.string   "name"
    t.integer  "eggs_per_week"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "escape_plans", force: :cascade do |t|
    t.string   "description"
    t.string   "first_stop"
    t.string   "disguise"
    t.integer  "safe_place_id"
    t.integer  "chicken_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer "chicken_id"
    t.integer "escape_plan_id"
  end

  create_table "safe_places", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.boolean  "chicken"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
