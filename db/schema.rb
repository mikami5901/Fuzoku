# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_11_07_143717) do
  create_table "bookings", force: :cascade do |t|
    t.integer "girl_id"
    t.datetime "reserve_start"
    t.datetime "reserve_finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.integer "address"
    t.string "mail"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "data_pages", force: :cascade do |t|
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.string "category_one"
    t.string "category_two"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "girls", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "height"
    t.integer "bust"
    t.string "bust_cup"
    t.integer "waist"
    t.integer "hip"
    t.string "girl_picture"
    t.string "message"
    t.string "tag_a"
    t.string "tag_b"
    t.string "tag_c"
    t.string "tag_d"
    t.integer "nomination_fee"
    t.date "start_date"
    t.boolean "experience"
    t.integer "option_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "kanrisyas", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_kanrisyas_on_email", unique: true
    t.index ["reset_password_token"], name: "index_kanrisyas_on_reset_password_token", unique: true
  end

  create_table "option_lists", force: :cascade do |t|
    t.string "option_name"
    t.string "option_picture"
    t.integer "option_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "options", force: :cascade do |t|
    t.integer "girl_id"
    t.string "o_name"
    t.string "o_picture"
    t.integer "o_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reserves", force: :cascade do |t|
    t.integer "girl_id"
    t.integer "schedule_id"
    t.time "reserve_start"
    t.time "reserve_finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ryokins", force: :cascade do |t|
    t.integer "course"
    t.integer "punn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.integer "girl_id"
    t.date "work_day"
    t.time "start_time"
    t.time "finish_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "login"
    t.date "birthday"
    t.string "address"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uses", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "yoyakus", force: :cascade do |t|
    t.integer "girl_id"
    t.time "reserve_start"
    t.time "reserve_finish"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
