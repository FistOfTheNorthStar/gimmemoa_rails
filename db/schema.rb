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

ActiveRecord::Schema.define(version: 2018_11_05_143055) do

  create_table "listings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "user_id"
    t.string "item_name"
    t.text "description"
    t.string "category"
    t.integer "unit_cents"
    t.string "unit_description"
    t.integer "shipping_per_unit_cents"
    t.integer "int_shipping_cents"
    t.integer "price_vat"
    t.integer "shipping_vat"
    t.datetime "offer_expires"
    t.datetime "offer_ships"
    t.string "currency"
    t.integer "minimum_order_cents"
    t.integer "maximum_order_cents"
    t.boolean "allow_pickup"
    t.string "image1"
    t.string "image2"
    t.string "image3"
    t.string "image4"
    t.string "image5"
    t.boolean "deleted"
    t.boolean "accepted_for_sale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category"], name: "index_listings_on_category"
    t.index ["item_name"], name: "index_listings_on_item_name"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

end
