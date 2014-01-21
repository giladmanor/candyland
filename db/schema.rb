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

ActiveRecord::Schema.define(version: 20140121122407) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "age_groups", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "approches", force: true do |t|
    t.integer  "prospect_id"
    t.string   "content"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "retweeted",   default: false
    t.boolean  "followed",    default: false
    t.boolean  "replied",     default: false
    t.boolean  "favorited",   default: false
    t.integer  "retweets",    default: 0
    t.integer  "follows",     default: 0
    t.integer  "replies",     default: 0
    t.integer  "favorites",   default: 0
    t.integer  "traffic",     default: 0
  end

  add_index "approches", ["prospect_id"], name: "index_approches_on_prospect_id", using: :btree

  create_table "genders", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prospects", force: true do |t|
    t.integer  "account_id"
    t.integer  "user_id"
    t.string   "name"
    t.string   "location"
    t.string   "twitter"
    t.string   "facebook"
    t.string   "blog"
    t.text     "other"
    t.text     "likes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "gender_id"
    t.integer  "age_group_id"
  end

  add_index "prospects", ["account_id"], name: "index_prospects_on_account_id", using: :btree
  add_index "prospects", ["user_id"], name: "index_prospects_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "code"
    t.text     "lock"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["account_id"], name: "index_roles_on_account_id", using: :btree

  create_table "users", force: true do |t|
    t.integer  "account_id"
    t.string   "login"
    t.string   "password"
    t.integer  "role_id"
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["account_id"], name: "index_users_on_account_id", using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

end
