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

ActiveRecord::Schema[7.1].define(version: 2024_01_06_102925) do
  create_table "institutions", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "ticker", null: false
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ticker"], name: "uniq_ticker", unique: true
  end

  create_table "trades", force: :cascade do |t|
    t.datetime "execution_time", null: false
    t.integer "stock_id"
    t.integer "institution_id"
    t.decimal "quantity", precision: 100, scale: 10
    t.decimal "price", precision: 6, scale: 2
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_trades_on_institution_id"
    t.index ["stock_id"], name: "index_trades_on_stock_id"
  end

  add_foreign_key "trades", "institutions"
  add_foreign_key "trades", "stocks"
end
