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

ActiveRecord::Schema.define(version: 20180205183617) do

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.string "charity_id_stripe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donations", force: :cascade do |t|
    t.integer "amount"
    t.integer "user_charity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_charity_id"], name: "index_donations_on_user_charity_id"
  end

  create_table "user_charities", force: :cascade do |t|
    t.integer "user_id"
    t.integer "charity_id"
    t.boolean "status_favorite"
    t.boolean "status_donated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["charity_id"], name: "index_user_charities_on_charity_id"
    t.index ["user_id"], name: "index_user_charities_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
    t.string "stripe_id_user"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
