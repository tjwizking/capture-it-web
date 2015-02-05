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

ActiveRecord::Schema.define(version: 20141230062535) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: true do |t|
    t.integer  "product_id"
    t.string   "session_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "quantity"
    t.string   "status",     limit: 1, default: "0"
  end

  add_index "carts", ["product_id"], name: "index_carts_on_product_id", using: :btree
  add_index "carts", ["user_id"], name: "index_carts_on_user_id", using: :btree

  create_table "feedbacks", force: true do |t|
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "pid",                       limit: 15
    t.string   "name",                      limit: 30
    t.string   "item_type",                 limit: 3
    t.string   "has_options",               limit: 1
    t.string   "size_type",                 limit: 3
    t.string   "size",                      limit: 11
    t.string   "has_color",                 limit: 1
    t.string   "color",                     limit: 20
    t.string   "in_stock",                  limit: 1
    t.integer  "stock_left"
    t.integer  "price"
    t.string   "for_sex",                   limit: 1
    t.string   "has_variant",               limit: 1
    t.string   "barcode_path_file_name"
    t.string   "barcode_path_content_type"
    t.integer  "barcode_path_file_size"
    t.datetime "barcode_path_updated_at"
    t.string   "image_path_file_name"
    t.string   "image_path_content_type"
    t.integer  "image_path_file_size"
    t.datetime "image_path_updated_at"
    t.string   "last_bought",               limit: 25
    t.integer  "bought_times"
    t.string   "last_scanned",              limit: 25
    t.integer  "scanned_times"
    t.string   "is_active",                 limit: 1
    t.integer  "ranking"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                             default: "", null: false
    t.string   "encrypted_password",                default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "BrandName",              limit: 25
    t.string   "logo_file_name"
    t.string   "logo_content_type"
    t.integer  "logo_file_size"
    t.datetime "logo_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
