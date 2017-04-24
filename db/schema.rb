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

ActiveRecord::Schema.define(version: 20170424215525) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carts", force: :cascade do |t|
    t.decimal  "cart_total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "customer_id"
    t.integer  "product_id"
    t.index ["customer_id"], name: "index_carts_on_customer_id", using: :btree
    t.index ["product_id"], name: "index_carts_on_product_id", using: :btree
  end

  create_table "categories", force: :cascade do |t|
    t.string   "category_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "customer_name"
    t.string   "customer_email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "product_name"
    t.decimal  "product_price"
    t.string   "product_image"
    t.text     "product_description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "category_id"
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
  end

  add_foreign_key "carts", "customers"
  add_foreign_key "carts", "products"
  add_foreign_key "products", "categories"
end
