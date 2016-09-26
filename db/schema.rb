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

ActiveRecord::Schema.define(version: 20160926052900) do

  create_table "nurses", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visiting_schedules", force: :cascade do |t|
    t.datetime "appointment_time"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "nurse_id"
    t.integer  "patient_id"
  end

  add_index "visiting_schedules", ["nurse_id"], name: "index_visiting_schedules_on_nurse_id"
  add_index "visiting_schedules", ["patient_id"], name: "index_visiting_schedules_on_patient_id"

  create_table "vital_records", force: :cascade do |t|
    t.decimal  "height"
    t.decimal  "weidht"
    t.integer  "pulse"
    t.decimal  "tempurature"
    t.integer  "bp_high"
    t.integer  "bp_low"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
