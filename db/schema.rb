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

ActiveRecord::Schema.define(:version => 20130205013638) do

  create_table "attendances", :force => true do |t|
    t.date     "class_date"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "class_hours", :default => 0
  end

  create_table "libraries", :force => true do |t|
    t.string   "item"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notes", :force => true do |t|
    t.text     "note"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "promotions", :force => true do |t|
    t.date     "testdate"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "rank_id",    :default => 0
  end

  create_table "ranks", :force => true do |t|
    t.integer  "seq"
    t.string   "name"
    t.integer  "class_hours_required", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cal_months_required",  :default => 0
  end

  create_table "students", :force => true do |t|
    t.string   "firstname"
    t.string   "middlename"
    t.string   "lastname"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "city"
    t.string   "state"
    t.text     "zip"
    t.string   "email"
    t.date     "birthdate"
    t.text     "additional_notes"
    t.boolean  "sticky_listing"
    t.boolean  "do_not_disturb"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "join_date",        :default => '1970-01-01'
    t.boolean  "is_adult"
  end

  create_table "year_end_reviews", :force => true do |t|
    t.text     "note"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
