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

ActiveRecord::Schema.define(version: 20120605205127) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "attractions", force: :cascade do |t|
    t.string    "name"
    t.geography "latlong",     limit: {:srid=>4326, :type=>"point", :geographic=>true}
    t.string    "category"
    t.string    "url"
    t.string    "ownership"
    t.text      "description"
    t.datetime  "created_at"
    t.datetime  "updated_at"
    t.integer   "page_id"
    t.boolean   "published"
  end

  create_table "enquiries", force: :cascade do |t|
    t.string   "firstname"
    t.string   "surname"
    t.string   "phone"
    t.string   "email"
    t.date     "arrival_date"
    t.integer  "night_count"
    t.integer  "people"
    t.integer  "rooms"
    t.text     "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "feed_entries", force: :cascade do |t|
    t.string   "name"
    t.text     "summary"
    t.string   "url"
    t.datetime "published_at"
    t.string   "guid"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "content"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.text     "keywords"
    t.text     "content"
    t.text     "sub_content"
    t.integer  "parent_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
    t.text     "abstract"
    t.string   "rss"
    t.boolean  "lightbox"
    t.boolean  "published"
    t.string   "parent"
  end

end
