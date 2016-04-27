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

ActiveRecord::Schema.define(version: 20160427192023) do

  create_table "items", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "amount",     limit: 255
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "items", ["user_id"], name: "index_items_on_user_id"

  create_table "sales", force: true do |t|
    t.integer  "buyer_id"
    t.integer  "seller_id"
    t.integer  "item_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sales", ["buyer_id"], name: "index_sales_on_buyer_id"
  add_index "sales", ["item_id"], name: "index_sales_on_item_id"
  add_index "sales", ["seller_id"], name: "index_sales_on_seller_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
