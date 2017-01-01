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

ActiveRecord::Schema.define(version: 20161231152422) do

  create_table "blazer_audits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "query_id"
    t.text     "statement",   limit: 65535
    t.string   "data_source"
    t.datetime "created_at"
  end

  create_table "blazer_checks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "creator_id"
    t.integer  "query_id"
    t.string   "state"
    t.string   "schedule"
    t.text     "emails",      limit: 65535
    t.string   "check_type"
    t.text     "message",     limit: 65535
    t.datetime "last_run_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "blazer_dashboard_queries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "dashboard_id"
    t.integer  "query_id"
    t.integer  "position"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "blazer_dashboards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "creator_id"
    t.text     "name",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "blazer_queries", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "creator_id"
    t.string   "name"
    t.text     "description", limit: 65535
    t.text     "statement",   limit: 65535
    t.string   "data_source"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "rounds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "name"
    t.integer "sort"
  end

  create_table "startups", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "des"
    t.string "img"
    t.string "tags"
    t.string "loca"
    t.date   "found_date"
    t.string "latest_round"
  end

end
