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

ActiveRecord::Schema.define(version: 2022_07_22_034640) do

  create_table "clients", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "address", default: "", null: false
    t.string "mail", default: "", null: false
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_histories", force: :cascade do |t|
    t.integer "pet_id"
    t.float "weight", default: 0.0, null: false
    t.float "height", default: 0.0, null: false
    t.string "diagnosis", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pet_id"], name: "index_pet_histories_on_pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.integer "client_id"
    t.string "name", default: "", null: false
    t.string "race", default: "", null: false
    t.date "bird", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_pets_on_client_id"
  end

end
