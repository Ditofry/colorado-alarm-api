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

ActiveRecord::Schema.define(version: 20160417045753) do

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.float    "lat"
    t.float    "lon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forecasts", force: :cascade do |t|
    t.date     "time"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "summary"
    t.string   "icon"
    t.string   "precip_type"
    t.decimal  "precip_intensity"
    t.decimal  "precip_probability"
    t.decimal  "temperature"
    t.decimal  "apparent_temperature"
    t.decimal  "dew_point"
    t.integer  "visibility"
    t.integer  "city_id"
  end

end
