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

ActiveRecord::Schema.define(version: 20160913051502) do

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
    t.string   "fax"
    t.float    "latitude"
    t.float    "longitude"
    t.index ["city", "state"], name: "index_addresses_on_city_and_state", using: :btree
    t.index ["latitude", "longitude"], name: "index_addresses_on_latitude_and_longitude", using: :btree
    t.index ["zip"], name: "index_addresses_on_zip", using: :btree
  end

  create_table "addresses_addressables", force: :cascade do |t|
    t.integer  "address_id"
    t.integer  "addressable_id"
    t.string   "addressable_type"
    t.string   "name"
    t.integer  "address_function"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["address_id"], name: "index_addresses_addressables_on_address_id", using: :btree
    t.index ["addressable_id", "addressable_type"], name: "addressable", using: :btree
    t.index ["addressable_id"], name: "index_addresses_addressables_on_addressable_id", using: :btree
  end

  create_table "addresses_appellables", force: :cascade do |t|
    t.integer  "address_id"
    t.integer  "appellation_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["address_id", "appellation_id"], name: "index_addresses_appellables_on_address_id_and_appellation_id", using: :btree
  end

  create_table "appellations", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "articles", force: :cascade do |t|
    t.text     "content"
    t.string   "title"
    t.string   "slug"
    t.integer  "author_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "org_id"
    t.string   "aasm_state"
    t.datetime "published_at"
    t.index ["author_id"], name: "index_articles_on_author_id", using: :btree
    t.index ["org_id"], name: "index_articles_on_org_id", using: :btree
    t.index ["slug"], name: "index_articles_on_slug", using: :btree
  end

  create_table "attachments", force: :cascade do |t|
    t.string   "attachment_uid"
    t.string   "attachment_name"
    t.string   "attachable_type"
    t.integer  "attachable_id"
    t.string   "name"
    t.string   "summary"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["attachable_id", "attachable_type"], name: "index_attachments_on_attachable_id_and_attachable_type", using: :btree
    t.index ["attachment_uid"], name: "index_attachments_on_attachment_uid", using: :btree
  end

  create_table "buttafly_mappings", force: :cascade do |t|
    t.integer  "originable_id"
    t.string   "originable_type"
    t.string   "targetable_model"
    t.text     "legend"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["originable_id", "originable_type"], name: "index_buttafly_mappings_on_originable_id_and_originable_type", using: :btree
  end

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
    t.index ["aasm_state"], name: "index_buttafly_spreadsheets_on_aasm_state", using: :btree
    t.index ["imported_at"], name: "index_buttafly_spreadsheets_on_imported_at", using: :btree
    t.index ["name"], name: "index_buttafly_spreadsheets_on_name", using: :btree
    t.index ["processed_at"], name: "index_buttafly_spreadsheets_on_processed_at", using: :btree
    t.index ["user_id"], name: "index_buttafly_spreadsheets_on_user_id", using: :btree
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content"
    t.integer  "commenter_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "ancestry"
    t.index ["ancestry"], name: "index_comments_on_ancestry", using: :btree
    t.index ["commentable_id", "commentable_type"], name: "index_comments_on_commentable_id_and_commentable_type", using: :btree
    t.index ["commenter_id"], name: "index_comments_on_commenter_id", using: :btree
  end

  create_table "competitions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "curations", force: :cascade do |t|
    t.string   "curatable_type"
    t.integer  "curatable_id"
    t.integer  "review_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["curatable_id", "curatable_type"], name: "index_curations_on_curatable_id_and_curatable_type", using: :btree
    t.index ["review_id"], name: "index_curations_on_review_id", using: :btree
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
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree
  end

  create_table "galleriable_galleries", force: :cascade do |t|
    t.string   "name"
    t.string   "galleriable_type"
    t.integer  "galleriable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["galleriable_type", "galleriable_id"], name: "by_galleriable", using: :btree
  end

  create_table "galleriable_photos", force: :cascade do |t|
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "name"
    t.string   "caption"
    t.integer  "photographer_id"
    t.string   "photographable_type"
    t.integer  "photographable_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["photographable_type", "photographable_id"], name: "by_photographable", using: :btree
  end

  create_table "galleriable_slides", force: :cascade do |t|
    t.integer  "photo_id"
    t.integer  "gallery_id"
    t.hstore   "properties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id", "gallery_id"], name: "index_galleriable_slides_on_photo_id_and_gallery_id", using: :btree
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "name"
    t.json     "properties"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "galleriable_type"
    t.integer  "galleriable_id"
    t.index ["galleriable_id", "galleriable_type"], name: "index_galleries_on_galleriable_id_and_galleriable_type", using: :btree
  end

  create_table "identities", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.boolean  "private"
    t.integer  "identifiable_id"
    t.string   "identifiable_type"
    t.string   "link"
    t.index ["identifiable_id", "identifiable_type"], name: "index_identities_on_identifiable_id_and_identifiable_type", using: :btree
  end

  create_table "lots", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "farm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "percentage"
    t.index ["product_id"], name: "index_lots_on_product_id", using: :btree
  end

  create_table "orgs", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.string   "slug"
    t.hstore   "properties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "blog_title"
    t.integer  "logo_id"
    t.integer  "parent_id"
    t.index ["name"], name: "index_orgs_on_name", using: :btree
    t.index ["slug"], name: "index_orgs_on_slug", using: :btree
  end

  create_table "payola_affiliates", force: :cascade do |t|
    t.string   "code"
    t.string   "email"
    t.integer  "percent"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payola_coupons", force: :cascade do |t|
    t.string   "code"
    t.integer  "percent_off"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active",      default: true
  end

  create_table "payola_sales", force: :cascade do |t|
    t.string   "email"
    t.string   "guid"
    t.integer  "product_id"
    t.string   "product_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state"
    t.string   "stripe_id"
    t.string   "stripe_token"
    t.string   "card_last4"
    t.date     "card_expiration"
    t.string   "card_type"
    t.text     "error"
    t.integer  "amount"
    t.integer  "fee_amount"
    t.integer  "coupon_id"
    t.boolean  "opt_in"
    t.integer  "download_count"
    t.integer  "affiliate_id"
    t.text     "customer_address"
    t.text     "business_address"
    t.string   "stripe_customer_id"
    t.string   "currency"
    t.text     "signed_custom_fields"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.index ["coupon_id"], name: "index_payola_sales_on_coupon_id", using: :btree
    t.index ["email"], name: "index_payola_sales_on_email", using: :btree
    t.index ["guid"], name: "index_payola_sales_on_guid", using: :btree
    t.index ["owner_id", "owner_type"], name: "index_payola_sales_on_owner_id_and_owner_type", using: :btree
    t.index ["product_id", "product_type"], name: "index_payola_sales_on_product", using: :btree
    t.index ["stripe_customer_id"], name: "index_payola_sales_on_stripe_customer_id", using: :btree
  end

  create_table "payola_stripe_webhooks", force: :cascade do |t|
    t.string   "stripe_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payola_subscriptions", force: :cascade do |t|
    t.string   "plan_type"
    t.integer  "plan_id"
    t.datetime "start"
    t.string   "status"
    t.string   "owner_type"
    t.integer  "owner_id"
    t.string   "stripe_customer_id"
    t.boolean  "cancel_at_period_end"
    t.datetime "current_period_start"
    t.datetime "current_period_end"
    t.datetime "ended_at"
    t.datetime "trial_start"
    t.datetime "trial_end"
    t.datetime "canceled_at"
    t.integer  "quantity"
    t.string   "stripe_id"
    t.string   "stripe_token"
    t.string   "card_last4"
    t.date     "card_expiration"
    t.string   "card_type"
    t.text     "error"
    t.string   "state"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency"
    t.integer  "amount"
    t.string   "guid"
    t.string   "stripe_status"
    t.integer  "affiliate_id"
    t.string   "coupon"
    t.text     "signed_custom_fields"
    t.text     "customer_address"
    t.text     "business_address"
    t.integer  "setup_fee"
    t.index ["guid"], name: "index_payola_subscriptions_on_guid", using: :btree
  end

  create_table "photos", force: :cascade do |t|
    t.string   "image_uid"
    t.string   "image_name"
    t.string   "name"
    t.string   "caption"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "photographer_id"
    t.integer  "photographable_id"
    t.string   "photographable_type"
    t.index ["photographable_id", "photographable_type"], name: "index_photos_on_photographable_id_and_photographable_type", using: :btree
    t.index ["photographer_id"], name: "index_photos_on_photographer_id", using: :btree
  end

  create_table "plans", force: :cascade do |t|
    t.string   "name"
    t.string   "stripe_id"
    t.string   "interval"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "description"
    t.date     "tenure_start"
    t.date     "tenure_end"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "positionable_type"
    t.integer  "positionable_id"
    t.index ["positionable_id", "positionable_type"], name: "index_positions_on_positionable_id_and_positionable_type", using: :btree
    t.index ["tenure_end"], name: "index_positions_on_tenure_end", using: :btree
    t.index ["tenure_start"], name: "index_positions_on_tenure_start", using: :btree
    t.index ["title", "user_id"], name: "index_positions_on_title_and_user_id", using: :btree
    t.index ["title"], name: "index_positions_on_title", using: :btree
    t.index ["user_id"], name: "index_positions_on_user_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "slug"
    t.hstore   "properties"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "producer_id"
    t.string   "type"
    t.text     "description"
    t.index ["name"], name: "index_products_on_name", using: :btree
    t.index ["properties"], name: "index_products_on_properties", using: :gist
    t.index ["slug"], name: "index_products_on_slug", using: :btree
  end

  create_table "reviews", force: :cascade do |t|
    t.string   "content"
    t.integer  "rating"
    t.integer  "wine_id"
    t.integer  "reviewer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["reviewer_id", "wine_id"], name: "index_reviews_on_reviewer_id_and_wine_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "slides", force: :cascade do |t|
    t.integer  "gallery_id"
    t.integer  "photo_id"
    t.hstore   "properties"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id", "gallery_id"], name: "index_slides_on_photo_id_and_gallery_id", using: :btree
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.string   "taggable_type"
    t.integer  "taggable_id"
    t.string   "tagger_type"
    t.integer  "tagger_id"
    t.string   "context",       limit: 128
    t.datetime "created_at"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true, using: :btree
    t.index ["taggable_id", "taggable_type", "context"], name: "index_taggings_on_taggable_id_and_taggable_type_and_context", using: :btree
  end

  create_table "tags", force: :cascade do |t|
    t.string  "name"
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true, using: :btree
  end

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
    t.string   "invited_by_type"
    t.integer  "invited_by_id"
    t.integer  "invitations_count",      default: 0
    t.string   "name"
    t.string   "bio"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "slug"
    t.integer  "plan_id"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
    t.index ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
    t.index ["invited_by_id", "invited_by_type"], name: "index_users_on_invited_by_id_and_invited_by_type", using: :btree
    t.index ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
    t.index ["name"], name: "index_users_on_name", using: :btree
    t.index ["plan_id"], name: "index_users_on_plan_id", using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  create_table "wishes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "quantity"
    t.integer  "product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "product_id"], name: "index_wishes_on_user_id_and_product_id", using: :btree
  end

  add_foreign_key "users", "plans"
end
