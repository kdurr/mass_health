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

ActiveRecord::Schema.define(version: 20130905185556) do

  create_table "town_health_records", force: true do |t|
    t.string   "city_name"
    t.integer  "population"
    t.integer  "number_of_children"
    t.integer  "number_of_seniors"
    t.integer  "per_capita_income"
    t.integer  "number_below_poverty"
    t.decimal  "percent_below_poverty"
    t.decimal  "percent_apc"
    t.decimal  "percent_c_sections"
    t.integer  "number_of_infant_deaths"
    t.decimal  "infant_mr"
    t.decimal  "percent_low_birth_weight"
    t.decimal  "percent_multiple_births"
    t.decimal  "percent_pf_pnc"
    t.decimal  "percent_teen_births"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
