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

ActiveRecord::Schema.define(version: 20180202113242) do

  create_table "pins", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  add_index "pins", ["user_id"], name: "index_pins_on_user_id"

  create_table "searches", force: :cascade do |t|
    t.string   "namess"
    t.string   "typess"
    t.string   "sending"
    t.date     "entry"
    t.date     "gojapan"
    t.date     "levels"
    t.integer  "age"
    t.string   "workfeild"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "nationality"
    t.string   "zip"
    t.string   "prefecture"
    t.string   "city"
    t.string   "building"
    t.string   "phone"
    t.date     "dob"
    t.string   "sex"
    t.string   "education"
    t.string   "mailadd"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "name_jp"
    t.text     "type"
    t.string   "Sending"
    t.string   "level"
    t.integer  "age"
    t.string   "work"
    t.date     "datego"
    t.date     "entry"
  end

  create_table "studentts", force: :cascade do |t|
    t.string   "name"
    t.string   "namejp"
    t.string   "sex"
    t.string   "types"
    t.string   "company"
    t.string   "level"
    t.date     "dayofbirth"
    t.integer  "age"
    t.string   "work"
    t.date     "datego"
    t.date     "dateinput"
    t.string   "nationality"
    t.integer  "zipcode"
    t.string   "prefecture"
    t.string   "city"
    t.string   "building"
    t.string   "telephone"
    t.string   "education"
    t.string   "email"
    t.string   "remail"
    t.string   "pas"
    t.string   "pass"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
