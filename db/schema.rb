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

ActiveRecord::Schema.define(version: 20150607094730) do

  create_table "ckpages_pages", force: :cascade do |t|
    t.text     "path"
    t.text     "content"
    t.text     "keywords"
    t.text     "description"
    t.text     "title"
    t.text     "robots"
    t.text     "redirect_url"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.text     "title1"
    t.text     "url1"
    t.text     "title2"
    t.text     "url2"
    t.text     "title3"
    t.text     "url3"
    t.text     "title4"
    t.text     "url4"
    t.text     "title5"
    t.text     "url5"
  end

  create_table "ckpages_parts", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckpages_uploads", force: :cascade do |t|
    t.string   "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "collection_items", force: :cascade do |t|
    t.integer  "collection_id"
    t.integer  "collectionable_id"
    t.string   "collectionable_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "collection_items", ["collection_id"], name: "index_collection_items_on_collection_id"
  add_index "collection_items", ["collectionable_type", "collectionable_id"], name: "collectionable"

  create_table "collections", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
  end

  add_index "collections", ["user_id"], name: "index_collections_on_user_id"

  create_table "links", force: :cascade do |t|
    t.string   "url"
    t.integer  "collectionable_id"
    t.string   "collectionable_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "links", ["collectionable_type", "collectionable_id"], name: "index_links_on_collectionable_type_and_collectionable_id"

  create_table "photos", force: :cascade do |t|
    t.string   "image"
    t.integer  "collectionable_id"
    t.string   "collectionable_type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "photos", ["collectionable_type", "collectionable_id"], name: "index_photos_on_collectionable_type_and_collectionable_id"

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
