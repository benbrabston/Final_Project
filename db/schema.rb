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

ActiveRecord::Schema.define(version: 20141124181252) do

  create_table "dorms", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "size"
    t.integer  "gender_i"
    t.integer  "crit_1"
    t.integer  "crit_2"
    t.integer  "crit_3"
    t.integer  "crit_4"
    t.integer  "crit_5"
    t.integer  "crit_6"
    t.integer  "crit_7"
    t.integer  "crit_8"
    t.integer  "crit_9"
    t.integer  "crit_10"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "f_factors", force: true do |t|
    t.integer  "student_id"
    t.integer  "gender_i"
    t.float    "factor_1"
    t.float    "factor_2"
    t.float    "factor_3"
    t.float    "factor_4"
    t.float    "factor_5"
    t.float    "factor_6"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "m_factors", force: true do |t|
    t.integer  "student_id"
    t.integer  "gender_i"
    t.float    "factor_1"
    t.float    "factor_2"
    t.float    "factor_3"
    t.float    "factor_4"
    t.float    "factor_5"
    t.float    "factor_6"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "school"
    t.string   "pref_location"
    t.integer  "crit_1"
    t.integer  "crit_2"
    t.integer  "crit_3"
    t.integer  "crit_4"
    t.integer  "crit_5"
    t.integer  "crit_6"
    t.integer  "crit_7"
    t.integer  "crit_8"
    t.integer  "crit_9"
    t.integer  "crit_10"
    t.string   "gender"
    t.integer  "gender_i"
    t.string   "country"
    t.integer  "dorm_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
