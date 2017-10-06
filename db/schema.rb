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

ActiveRecord::Schema.define(version: 20171005195144) do

  create_table "appetizers", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.text "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "appetizers_dinners", id: false, force: :cascade do |t|
    t.integer "dinner_id", null: false
    t.integer "appetizer_id", null: false
  end

  create_table "brunches", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chickens", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chimichangas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "desserts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dinners", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dinners_tapas", id: false, force: :cascade do |t|
    t.integer "dinner_id", null: false
    t.integer "tapa_id", null: false
  end

  create_table "dips", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drinks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enchiladas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fajita", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fajitas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "join_t_able_dinner_appetizers", force: :cascade do |t|
    t.string "dinner"
    t.string "appetizer"
  end

  create_table "lunches", force: :cascade do |t|
    t.string "t"
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menu_items", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.string "menu_type"
    t.string "food_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nachos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "porks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quesadillas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salads", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seafoods", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sides", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soups", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steaks", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tacos", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tapas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
