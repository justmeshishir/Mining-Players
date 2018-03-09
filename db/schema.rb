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

ActiveRecord::Schema.define(version: 20180309133858) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "name"
    t.string "address"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "receive_type", default: 0
    t.index ["email"], name: "index_accounts_on_email", unique: true
    t.index ["reset_password_token"], name: "index_accounts_on_reset_password_token", unique: true
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "assets", force: :cascade do |t|
    t.text "name"
    t.string "make"
    t.string "model"
    t.string "memory"
    t.boolean "return_request", default: false
    t.date "return_request_date"
    t.date "returned_date"
    t.boolean "lock", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.integer "status", default: 0
    t.string "serial_number"
    t.text "description"
    t.string "return_request_address"
    t.integer "hash_rate", default: 0
    t.index ["account_id"], name: "index_assets_on_account_id"
  end

  create_table "balances", force: :cascade do |t|
    t.integer "asset_id"
    t.string "crypto_name"
    t.float "crypto_amount", default: 0.0
    t.date "payout_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "account_id"
    t.index ["asset_id"], name: "index_balances_on_asset_id"
  end

  create_table "banks", force: :cascade do |t|
    t.integer "account_id"
    t.string "name"
    t.string "bsb"
    t.string "account_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "amount"
    t.boolean "confirm", default: false
    t.index ["account_id"], name: "index_banks_on_account_id"
  end

  create_table "payouts", force: :cascade do |t|
    t.integer "asset_id"
    t.integer "payout_amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "payout_date"
    t.string "transaction_id"
    t.index ["asset_id"], name: "index_payouts_on_asset_id"
  end

  create_table "wallets", force: :cascade do |t|
    t.integer "account_id"
    t.string "address"
    t.date "date"
    t.boolean "lock", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "amount"
    t.boolean "confirm", default: false
    t.index ["account_id"], name: "index_wallets_on_account_id"
  end

end
