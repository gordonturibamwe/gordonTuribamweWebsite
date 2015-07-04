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

ActiveRecord::Schema.define(version: 20150704033635) do

  create_table "about_users", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buttons", force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "home_user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "buttons", ["home_user_id"], name: "index_buttons_on_home_user_id"

  create_table "contacts", force: :cascade do |t|
    t.string   "tel"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.integer  "about_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "contacts", ["about_user_id"], name: "index_contacts_on_about_user_id"

  create_table "educations", force: :cascade do |t|
    t.string   "title"
    t.string   "school"
    t.string   "schoolurl"
    t.date     "startdate"
    t.date     "enddate"
    t.text     "description"
    t.integer  "about_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "educations", ["about_user_id"], name: "index_educations_on_about_user_id"

  create_table "home_users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "intros", force: :cascade do |t|
    t.text     "intro"
    t.integer  "home_user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "intros", ["home_user_id"], name: "index_intros_on_home_user_id"

  create_table "pixes", force: :cascade do |t|
    t.string   "name"
    t.string   "caption"
    t.integer  "home_user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "portfolio_id"
  end

  add_index "pixes", ["home_user_id"], name: "index_pixes_on_home_user_id"

  create_table "portfolios", force: :cascade do |t|
    t.string   "title"
    t.date     "when"
    t.text     "description"
    t.string   "link"
    t.integer  "work_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "portfolios", ["work_id"], name: "index_portfolios_on_work_id"

  create_table "skills", force: :cascade do |t|
    t.text     "skills"
    t.integer  "about_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "skills", ["about_user_id"], name: "index_skills_on_about_user_id"

  create_table "works", force: :cascade do |t|
    t.string   "title"
    t.date     "start"
    t.date     "end"
    t.text     "description"
    t.string   "link"
    t.integer  "about_user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "company"
    t.string   "location"
  end

  add_index "works", ["about_user_id"], name: "index_works_on_about_user_id"

end
