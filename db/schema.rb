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

ActiveRecord::Schema.define(version: 20160926230731) do

  create_table "accepted_jobs", force: :cascade do |t|
    t.integer  "job_posting_id"
    t.integer  "asking_price_id"
    t.text     "seller_review"
    t.text     "buyer_review"
    t.integer  "seller_rating"
    t.integer  "buyer_rating"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.boolean  "buyer_completed"
    t.boolean  "seller_completed"
  end

  create_table "asking_prices", force: :cascade do |t|
    t.integer  "skill_id"
    t.string   "price"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "quanitity"
  end

  create_table "job_postings", force: :cascade do |t|
    t.string   "job_name"
    t.text     "description"
    t.text     "skills_required"
    t.string   "estimated_time"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "user_id"
  end

  create_table "payment_informations", force: :cascade do |t|
    t.integer  "buyer_id"
    t.integer  "card_number"
    t.integer  "cvv_code"
    t.string   "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "skill"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "password_digest"
    t.string   "role"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "active"
    t.text     "buyer_bio"
    t.text     "seller_bio"
  end

end
