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

ActiveRecord::Schema.define(:version => 20111218161314) do

  create_table "authorizations", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "banks", :force => true do |t|
    t.string   "name"
    t.integer  "o_negative",  :default => 0
    t.integer  "o_positive",  :default => 0
    t.integer  "a_negative",  :default => 0
    t.integer  "b_negative",  :default => 0
    t.integer  "a_positive",  :default => 0
    t.integer  "b_positive",  :default => 0
    t.integer  "ab_negative", :default => 0
    t.integer  "ab_positive", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blood_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "blood_types_requests", :id => false, :force => true do |t|
    t.integer  "blood_type_id"
    t.integer  "request_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requests", :force => true do |t|
    t.integer  "user_id"
    t.string   "receptor"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
    t.boolean  "gmaps"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "blood_type_id"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "email"
  end

end
