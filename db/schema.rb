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

ActiveRecord::Schema.define(version: 20170503164924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "personal_goal_trackers", force: :cascade do |t|
    t.string   "personal_goal_id"
    t.integer  "record_amount"
    t.float    "progress"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["personal_goal_id"], name: "index_personal_goal_trackers_on_personal_goal_id", using: :btree
  end

  create_table "personal_goals", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.string   "type_of_outcome"
    t.integer  "target"
    t.float    "progress"
    t.date     "start"
    t.datetime "end"
    t.string   "measured_by"
    t.datetime "target_date"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["user_id"], name: "index_personal_goals_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
