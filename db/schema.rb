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

ActiveRecord::Schema.define(version: 20170305205016) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "citations", force: :cascade do |t|
    t.string  "address",          null: false
    t.string  "parcel",           null: false
    t.string  "name",             null: false
    t.string  "code_number",      null: false
    t.string  "code_description", null: false
    t.string  "date_cited",       null: false
    t.string  "date_corrected"
    t.boolean "status",           null: false
    t.string  "case_number",      null: false
  end

  create_table "restaurantcategories", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "category_id"
    t.index ["category_id"], name: "index_restaurantcategories_on_category_id", using: :btree
    t.index ["restaurant_id"], name: "index_restaurantcategories_on_restaurant_id", using: :btree
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "address",   null: false
    t.string "latutude",  null: false
    t.string "longitude", null: false
    t.string "name",      null: false
    t.string "price"
    t.string "rating"
  end

  create_table "restcats", force: :cascade do |t|
    t.integer "restaurant_id"
    t.integer "category_id"
    t.index ["category_id"], name: "index_restcats_on_category_id", using: :btree
    t.index ["restaurant_id"], name: "index_restcats_on_restaurant_id", using: :btree
  end

end
