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

ActiveRecord::Schema.define(version: 20140406203014) do

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.decimal  "addmission_charge"
    t.datetime "started_at"
    t.datetime "expired_at"
    t.integer  "group_id"
    t.integer  "venue_id"
    t.text     "schedule"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["group_id"], name: "index_events_on_group_id"
  add_index "events", ["venue_id"], name: "index_events_on_venue_id"

  create_table "genres", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "parent_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "genres", ["parent_id"], name: "index_genres_on_parent_id"

  create_table "group_genres", force: true do |t|
    t.integer  "group_id"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_genres", ["genre_id"], name: "index_group_genres_on_genre_id"
  add_index "group_genres", ["group_id"], name: "index_group_genres_on_group_id"

  create_table "group_members", force: true do |t|
    t.integer  "group_id"
    t.integer  "person_id"
    t.integer  "position"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_members", ["group_id"], name: "index_group_members_on_group_id"
  add_index "group_members", ["person_id"], name: "index_group_members_on_person_id"

  create_table "group_venues", force: true do |t|
    t.integer  "venue_id"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_venues", ["group_id"], name: "index_group_venues_on_group_id"
  add_index "group_venues", ["venue_id"], name: "index_group_venues_on_venue_id"

  create_table "groups", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "state"
    t.boolean  "closed"
    t.integer  "created_by_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "groups", ["created_by_id"], name: "index_groups_on_created_by_id"

  create_table "locations", force: true do |t|
    t.string   "address_one"
    t.string   "address_two"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.integer  "locatable_id"
    t.string   "locatable_type"
    t.string   "md5hash"
    t.string   "provider"
    t.string   "precision"
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "locations", ["locatable_id", "locatable_type"], name: "index_locations_on_locatable_id_and_locatable_type"

  create_table "occurrences", force: true do |t|
    t.datetime "started_at"
    t.datetime "expired_at"
    t.boolean  "generated"
    t.datetime "canceled_at"
    t.integer  "event_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "occurrences", ["event_id"], name: "index_occurrences_on_event_id"

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "skype"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "contact_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
