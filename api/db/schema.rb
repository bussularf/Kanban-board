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

ActiveRecord::Schema[7.0].define(version: 2023_11_16_055619) do
  create_table "assigned_cards", force: :cascade do |t|
    t.integer "card_id", null: false
    t.json "assigned_users"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_assigned_cards_on_card_id"
  end

  create_table "cards", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "position"
    t.integer "kanban_column_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kanban_column_id"], name: "index_cards_on_kanban_column_id"
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "kanban_columns", force: :cascade do |t|
    t.string "name"
    t.integer "position"
    t.integer "kanban_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["kanban_id"], name: "index_kanban_columns_on_kanban_id"
  end

  create_table "kanbans", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "assigned_cards", "cards"
  add_foreign_key "cards", "kanban_columns"
  add_foreign_key "cards", "users"
  add_foreign_key "kanban_columns", "kanbans"
end
