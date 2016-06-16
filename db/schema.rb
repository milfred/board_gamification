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

ActiveRecord::Schema.define(version: 20160616190248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "title",      null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorizations", force: :cascade do |t|
    t.integer  "game_id",     null: false
    t.integer  "category_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body",         null: false
    t.integer  "commenter_id", null: false
    t.integer  "review_id",    null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "games", force: :cascade do |t|
    t.string   "name",                                                                                                                                                      null: false
    t.text     "description"
    t.string   "number_of_players"
    t.string   "image_url",         default: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAZOAAAAJGE3MWQ1N2JmLTViZTAtNGY4My05NWFkLWU0NzQ5YTUzN2Y5OA.jpg"
    t.datetime "created_at",                                                                                                                                                null: false
    t.datetime "updated_at",                                                                                                                                                null: false
  end

  create_table "groups", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "creator_id",  null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.text     "description"
  end

  create_table "memberships", force: :cascade do |t|
    t.integer  "member_id",  null: false
    t.integer  "group_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ownerships", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.integer "game_id",  null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "rating",      null: false
    t.string   "title",       null: false
    t.text     "body"
    t.integer  "reviewer_id", null: false
    t.integer  "game_id",     null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",        null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.text     "personal_info"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
