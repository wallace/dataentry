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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120312154552) do

  create_table "divers", :force => true do |t|
    t.string   "diver_name"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "diver_name_id"
  end

  create_table "entrysamples", :force => true do |t|
    t.integer  "sample_type_id"
    t.date     "date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "diver_name_id"
    t.string   "buddy_name_id"
    t.integer  "habitat_type_id"
    t.float    "cylinder_radius"
    t.string   "current"
    t.float    "max_depth"
    t.float    "station_depth"
    t.float    "vis"
    t.float    "water_temp"
    t.integer  "divbegh"
    t.integer  "divbegm"
    t.integer  "divendh"
    t.integer  "divendm"
    t.integer  "sampbegh"
    t.integer  "sampbegm"
    t.integer  "sampendh"
    t.integer  "sampendm"
    t.text     "fishgear"
    t.text     "comments"
    t.string   "mastersampcd"
  end

  create_table "habitattypes", :force => true do |t|
    t.integer  "habitat_type_id"
    t.string   "habitat_name"
    t.text     "habitat_descr"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "sampletypes", :force => true do |t|
    t.integer  "type_id"
    t.string   "type_name"
    t.text     "type_descr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
