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

ActiveRecord::Schema.define(version: 20150406190453) do

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "user_id"
    t.integer  "sequence_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "comments", ["sequence_id"], name: "index_comments_on_sequence_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "photos", force: :cascade do |t|
    t.string   "filename"
    t.text     "caption"
    t.integer  "pose_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "photos", ["pose_id"], name: "index_photos_on_pose_id"

  create_table "poses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "sequence_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "poses", ["sequence_id"], name: "index_poses_on_sequence_id"

  create_table "sequences", force: :cascade do |t|
    t.string   "name"
    t.string   "level"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sequences", ["user_id"], name: "index_sequences_on_user_id"

end
