# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_11_13_172157) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "guesses", default: [], array: true
    t.boolean "opened", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "puzzle_id", null: false
    t.index ["puzzle_id"], name: "index_games_on_puzzle_id"
    t.index ["user_id"], name: "index_games_on_user_id"
  end

  create_table "puzzles", force: :cascade do |t|
    t.string "gridLetters", default: [], array: true
    t.integer "gridNumbers", default: [], array: true
    t.string "cluesAcross", default: [], array: true
    t.string "cluesDown", default: [], array: true
    t.string "answersAcross", default: [], array: true
    t.string "answersDown", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.integer "score", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "games", "puzzles"
  add_foreign_key "games", "users"
end
