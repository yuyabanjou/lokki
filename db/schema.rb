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

ActiveRecord::Schema.define(version: 2020_02_24_083626) do

  create_table "favorite_spots", force: :cascade do |t|
    t.integer "traveller_id"
    t.integer "spot_id"
    t.text "favorite_spot_memo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer "traveller_id"
    t.string "title"
    t.text "synopsis"
    t.string "theme"
    t.boolean "public_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "itinerary_spots", force: :cascade do |t|
    t.integer "itinerary_id"
    t.integer "spot_id"
    t.date "date"
    t.text "itinerary_spot_memo"
    t.text "reference_url"
    t.integer "moving_genre"
    t.text "moving_memo"
    t.integer "fare"
    t.datetime "arrival_plan_time"
    t.datetime "start_plan_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spots", force: :cascade do |t|
    t.integer "traveller_id"
    t.integer "genre"
    t.string "spot_name"
    t.text "spot_text"
    t.string "image_id"
    t.integer "cost"
    t.string "business_hours"
    t.string "stay_time"
    t.string "position"
    t.string "access"
    t.boolean "public_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "travellers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.integer "trip_count"
    t.boolean "entry_status", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_travellers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_travellers_on_reset_password_token", unique: true
  end

end
