# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160711181405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "base_templates", force: :cascade do |t|
    t.string   "html_file"
    t.integer  "background"
    t.integer  "logo"
    t.integer  "img_1"
    t.integer  "img_2"
    t.integer  "img_3"
    t.integer  "img_4"
    t.integer  "img_5"
    t.integer  "text_1"
    t.integer  "text_2"
    t.integer  "text_3"
    t.integer  "text_4"
    t.integer  "text_5"
    t.integer  "text_6"
    t.integer  "text_7"
    t.integer  "text_8"
    t.integer  "text_9"
    t.integer  "text_10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "billing_addresses", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.string   "postal_code"
    t.string   "stripe_data"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "billing_addresses", ["user_id"], name: "index_billing_addresses_on_user_id", using: :btree

  create_table "billing_cycles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "plan_id"
    t.date     "date_issued"
    t.integer  "amount_issued"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "billing_cycles", ["plan_id"], name: "index_billing_cycles_on_plan_id", using: :btree
  add_index "billing_cycles", ["user_id"], name: "index_billing_cycles_on_user_id", using: :btree

  create_table "certificates", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "students_count", default: 0
    t.hstore   "tags"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "template_id"
  end

  add_index "certificates", ["template_id"], name: "index_certificates_on_template_id", using: :btree
  add_index "certificates", ["user_id"], name: "index_certificates_on_user_id", using: :btree

  create_table "images", force: :cascade do |t|
    t.integer  "user_id"
    t.boolean  "default"
    t.string   "route"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "images", ["user_id"], name: "index_images_on_user_id", using: :btree

  create_table "plans", force: :cascade do |t|
    t.integer  "monthly_certs"
    t.integer  "price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "templates", force: :cascade do |t|
    t.integer  "certificate_id"
    t.integer  "background"
    t.integer  "logo"
    t.integer  "img_1"
    t.integer  "img_2"
    t.integer  "img_3"
    t.integer  "img_4"
    t.integer  "img_5"
    t.integer  "text_1"
    t.integer  "text_2"
    t.integer  "text_3"
    t.integer  "text_4"
    t.integer  "text_5"
    t.integer  "text_6"
    t.integer  "text_7"
    t.integer  "text_8"
    t.integer  "text_9"
    t.integer  "text_10"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "base_template_id"
  end

  add_index "templates", ["base_template_id"], name: "index_templates_on_base_template_id", using: :btree
  add_index "templates", ["certificate_id"], name: "index_templates_on_certificate_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "billing_addresses", "users"
  add_foreign_key "billing_cycles", "plans"
  add_foreign_key "billing_cycles", "users"
  add_foreign_key "certificates", "templates"
  add_foreign_key "certificates", "users"
  add_foreign_key "images", "users"
  add_foreign_key "templates", "base_templates"
  add_foreign_key "templates", "certificates"
end
