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

ActiveRecord::Schema.define(version: 20150906204507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "addresses", force: :cascade do |t|
    t.string   "line_1"
    t.string   "line_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "addresses", ["city", "state"], name: "index_addresses_on_city_and_state", using: :btree
  add_index "addresses", ["zip"], name: "index_addresses_on_zip", using: :btree

  create_table "addresses_addressables", force: :cascade do |t|
    t.integer  "address_id"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "name"
    t.integer  "address_function"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "addresses_addressables", ["address_id"], name: "index_addresses_addressables_on_address_id", using: :btree
  add_index "addresses_addressables", ["addressable_id"], name: "index_addresses_addressables_on_addressable_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.text     "content"
    t.string   "title"
    t.string   "slug"
    t.integer  "author_id"
    t.string   "bloggable_type"
    t.integer  "bloggable_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "org_id"
  end

  add_index "articles", ["slug"], name: "index_articles_on_slug", using: :btree

  create_table "authentications", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buttafly_mappings", force: :cascade do |t|
    t.integer  "originable_id"
    t.string   "originable_type"
    t.string   "targetable_model"
    t.text     "legend"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "buttafly_mappings", ["originable_id", "originable_type"], name: "index_buttafly_mappings_on_originable_id_and_originable_type", using: :btree

  create_table "buttafly_spreadsheets", force: :cascade do |t|
    t.json     "data"
    t.string   "name"
    t.string   "flat_file"
    t.integer  "user_id"
    t.datetime "imported_at"
    t.datetime "processed_at"
    t.string   "aasm_state"
    t.integer  "source_row_count"
    t.integer  "mtime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "buttafly_spreadsheets", ["aasm_state"], name: "index_buttafly_spreadsheets_on_aasm_state", using: :btree
  add_index "buttafly_spreadsheets", ["imported_at"], name: "index_buttafly_spreadsheets_on_imported_at", using: :btree
  add_index "buttafly_spreadsheets", ["name"], name: "index_buttafly_spreadsheets_on_name", using: :btree
  add_index "buttafly_spreadsheets", ["processed_at"], name: "index_buttafly_spreadsheets_on_processed_at", using: :btree
  add_index "buttafly_spreadsheets", ["user_id"], name: "index_buttafly_spreadsheets_on_user_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "commenter_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "events", force: :cascade do |t|
    t.integer  "competiton_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "orgs", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "slug"
    t.hstore   "properties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "blog_title"
  end

  add_index "orgs", ["name"], name: "index_orgs_on_name", using: :btree
  add_index "orgs", ["slug"], name: "index_orgs_on_slug", using: :btree

  create_table "photos", force: :cascade do |t|
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "name"
    t.string   "caption"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "positionable_id"
    t.string   "positionable_type"
    t.string   "title"
    t.string   "description"
    t.date     "tenure_start"
    t.date     "tenure_end"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.hstore   "properties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "products", ["name"], name: "index_products_on_name", using: :btree
  add_index "products", ["slug"], name: "index_products_on_slug", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "taggable_id"
    t.string   "taggable_type"
    t.integer  "tagger_id"
    t.string   "tagger_type"
    t.string   "context",       limit: 128
    t.datetime "created_at"
  end

  add_index "taggings", ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
  add_index "taggings", ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
  end

  add_index "tags", ["name"], name: "index_tags_on_name", unique: true, using: :btree

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
    t.string   "name"
    t.string   "bio"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id", "invited_by_type"], name: "index_users_on_invited_by_id_and_invited_by_type", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["name"], name: "index_users_on_name", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

  create_table "wineries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "identities", "users"
end
