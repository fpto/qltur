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

ActiveRecord::Schema.define(version: 20170121153440) do

  create_table "concerts", force: :cascade do |t|
    t.text     "title"
    t.text     "time"
    t.text     "date"
    t.text     "band"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "image_url"
    t.integer  "venue_id"
  end

  add_index "concerts", ["venue_id"], name: "index_concerts_on_venue_id"

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "website"
    t.text     "facebook"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "postal_code"
    t.string   "state"
    t.string   "country"
    t.text     "cover_image"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
