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

ActiveRecord::Schema.define(version: 20150623180558) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experiences", force: :cascade do |t|
    t.string   "company_name",    null: false
    t.string   "company_website"
    t.string   "city"
    t.string   "state"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "role",            null: false
    t.string   "resp_1"
    t.string   "resp_2"
    t.string   "resp_3"
    t.string   "resp_4"
    t.string   "resp_5"
    t.integer  "user_id",         null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "desc",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs_skills", force: :cascade do |t|
    t.integer "job_id",   null: false
    t.integer "skill_id", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "title",      null: false
    t.string   "desc",       null: false
    t.string   "website"
    t.string   "image_src"
    t.integer  "user_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills_users", force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "skill_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "f_name"
    t.string   "l_name"
    t.string   "org_name"
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.string   "type",            null: false
    t.string   "image_src"
    t.string   "phone"
    t.string   "city"
    t.string   "state"
    t.string   "website"
    t.string   "github"
    t.string   "twitter"
    t.string   "linkedin"
    t.string   "behance"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
