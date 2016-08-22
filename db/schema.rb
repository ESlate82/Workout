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

ActiveRecord::Schema.define(version: 20160822002837) do

  create_table "exercises", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "sets",       limit: 4
    t.integer  "reps",       limit: 4
    t.integer  "workout_id", limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "exercises", ["workout_id"], name: "index_exercises_on_workout_id", using: :btree

  create_table "workouts", force: :cascade do |t|
    t.datetime "date"
    t.string   "workout",    limit: 255
    t.string   "mood",       limit: 255
    t.string   "length",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_foreign_key "exercises", "workouts"
end
