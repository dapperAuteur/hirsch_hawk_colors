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

ActiveRecord::Schema.define(version: 20160609003554) do

  create_table "events", force: :cascade do |t|
    t.string   "name"
    t.boolean  "classroom"
    t.boolean  "meal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "my_teacher"
    t.string   "grade"
    t.integer  "student_id"
    t.string   "email_address"
    t.date     "dob"
    t.string   "gender"
    t.date     "entry_date"
    t.float    "age"
    t.string   "images"
    t.boolean  "current_student"
    t.text     "my_allergies"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.boolean  "student",           default: false
    t.boolean  "teacher",           default: false
    t.boolean  "staff",             default: false
    t.date     "dob"
    t.string   "grade"
    t.string   "my_teacher"
    t.text     "my_allergies"
    t.boolean  "current_student",   default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["grade"], name: "index_users_on_grade"
  add_index "users", ["my_allergies"], name: "index_users_on_my_allergies"
  add_index "users", ["my_teacher"], name: "index_users_on_my_teacher"
  add_index "users", ["staff"], name: "index_users_on_staff"
  add_index "users", ["teacher"], name: "index_users_on_teacher"

end
