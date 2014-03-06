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

ActiveRecord::Schema.define(version: 20140304030224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booty_addresses", force: true do |t|
    t.string   "street1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "booty_addresses", ["city"], name: "index_booty_addresses_on_city", using: :btree
  add_index "booty_addresses", ["created_at"], name: "index_booty_addresses_on_created_at", using: :btree
  add_index "booty_addresses", ["state"], name: "index_booty_addresses_on_state", using: :btree
  add_index "booty_addresses", ["street1"], name: "index_booty_addresses_on_street1", using: :btree
  add_index "booty_addresses", ["updated_at"], name: "index_booty_addresses_on_updated_at", using: :btree
  add_index "booty_addresses", ["zip"], name: "index_booty_addresses_on_zip", using: :btree

end
