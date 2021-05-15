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

ActiveRecord::Schema.define(version: 20200128194540) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actcodes", force: :cascade do |t|
    t.string   "actcode",       limit: 255
    t.integer  "management_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description",   limit: 255
    t.integer  "user_id"
    t.integer  "status",                    default: 1
  end

  create_table "active_admin_comments", force: :cascade do |t|
    t.integer  "resource_id",               null: false
    t.string   "resource_type", limit: 255, null: false
    t.integer  "author_id"
    t.string   "author_type",   limit: 255
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace",     limit: 255
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  end

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type", limit: 255
    t.integer  "owner_id"
    t.string   "owner_type",     limit: 255
    t.string   "key",            limit: 255
    t.text     "parameters"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "actnotes", force: :cascade do |t|
    t.string   "uniquekey",           limit: 255
    t.text     "contract_provisions"
    t.text     "act_notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "acts", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "actcode",     limit: 255
    t.boolean  "premium"
    t.text     "videocode"
    t.text     "description"
  end

  create_table "admin_notes", force: :cascade do |t|
    t.integer  "resource_id",                 null: false
    t.string   "resource_type",   limit: 255, null: false
    t.integer  "admin_user_id"
    t.string   "admin_user_type", limit: 255
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["admin_user_type", "admin_user_id"], name: "index_admin_notes_on_admin_user_type_and_admin_user_id", using: :btree
    t.index ["resource_type", "resource_id"], name: "index_admin_notes_on_resource_type_and_resource_id", using: :btree
  end

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 128, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "api_keys", force: :cascade do |t|
    t.string   "access_token", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "confirmations", force: :cascade do |t|
    t.integer  "contract_id"
    t.integer  "user_id"
    t.integer  "confirmed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", force: :cascade do |t|
    t.string   "accounting_confirmation_date",      limit: 255
    t.string   "act_form",                          limit: 255
    t.integer  "act_net"
    t.string   "agent",                             limit: 255
    t.string   "act_booked",                        limit: 255
    t.integer  "credit_card_fee"
    t.string   "ceremony_address_line_2",           limit: 255
    t.string   "ceremony_location_city",            limit: 255
    t.string   "ceremony_instrumenttation",         limit: 255
    t.string   "ceremonoy_location_name",           limit: 255
    t.string   "seremonly_location_state",          limit: 255
    t.string   "ceremony_start_time",               limit: 255
    t.string   "ceremony_location_zip",             limit: 255
    t.integer  "ceremony_charge"
    t.integer  "cocktails_charge"
    t.integer  "early_setup_charge"
    t.integer  "contract_price"
    t.integer  "charge_per_horn"
    t.integer  "other_charges"
    t.string   "cocktail_instrumentation",          limit: 255
    t.string   "confirmation_date",                 limit: 255
    t.string   "contract_sent_date",                limit: 255
    t.string   "contract_number",                   limit: 255
    t.string   "contract_revision_number",          limit: 255
    t.string   "date_of_cancellation",              limit: 255
    t.string   "date_of_ceremony",                  limit: 255
    t.integer  "charge_per_dancer"
    t.integer  "number_of_dancers"
    t.string   "giveaways",                         limit: 255
    t.integer  "giveaways_charge"
    t.integer  "dj_tech_charge"
    t.string   "tech",                              limit: 255
    t.string   "event_end_time",                    limit: 255
    t.string   "early_setup_time",                  limit: 255
    t.integer  "number_of_horns"
    t.string   "type_of_light_show",                limit: 255
    t.string   "location_address_line_1",           limit: 255
    t.string   "location_address_line_2",           limit: 255
    t.string   "location_name",                     limit: 255
    t.string   "location_city",                     limit: 255
    t.string   "location_state",                    limit: 255
    t.string   "location_zip",                      limit: 255
    t.integer  "non_commissionable_charges"
    t.string   "location_phone",                    limit: 255
    t.integer  "pick_up_amount"
    t.string   "explanation_opf_pickup_adjustment", limit: 255
    t.string   "capital_music_player",              limit: 255
    t.string   "capital_music_pay",                 limit: 255
    t.integer  "base_price_of_act"
    t.date     "questionnaire_received_date"
    t.date     "questionnaire_sent_date"
    t.integer  "referral_fee_amount"
    t.string   "referral_fee_to",                   limit: 255
    t.string   "song_requests",                     limit: 255
    t.string   "event_start_time",                  limit: 255
    t.string   "contract_status",                   limit: 255
    t.integer  "tax_amount"
    t.string   "type_of_act",                       limit: 255
    t.string   "type_of_event",                     limit: 255
    t.string   "videographer_1",                    limit: 255
    t.string   "videographer_2",                    limit: 255
    t.string   "videgrapher_3",                     limit: 255
    t.text     "act_notes"
    t.text     "contract_provisions"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unique3",                           limit: 255
    t.string   "prntkey23",                         limit: 255
    t.string   "prntkey13",                         limit: 255
    t.string   "act_code",                          limit: 255
    t.string   "tmtable",                           limit: 255
    t.string   "party_planner",                     limit: 255
    t.string   "hours_of_coverage",                 limit: 255
    t.string   "unique_2",                          limit: 255
    t.string   "prntkey_2",                         limit: 255
    t.string   "first_name",                        limit: 255
    t.string   "last_name",                         limit: 255
    t.string   "email_address",                     limit: 255
    t.string   "company",                           limit: 255
    t.string   "brides_names",                      limit: 255
    t.string   "grooms_name",                       limit: 255
    t.string   "home_phone",                        limit: 255
    t.string   "work_phone",                        limit: 255
    t.string   "cell_phone",                        limit: 255
    t.date     "date_of_event"
    t.integer  "confirmation",                                  default: 0
    t.string   "ceremonoy_address_line_1",          limit: 255
    t.string   "cocktail_time",                     limit: 255
    t.string   "reception_location",                limit: 255
    t.boolean  "unsubscrib"
    t.string   "player4",                           limit: 255
    t.string   "player5",                           limit: 255
    t.string   "player6",                           limit: 255
    t.string   "player7",                           limit: 255
    t.string   "player8",                           limit: 255
    t.string   "didconfirm"
    t.string   "whoconfirmed"
    t.datetime "whenconfirmed"
    t.string   "agency"
    t.index ["unique3"], name: "index_contracts_on_unique3", unique: true, using: :btree
  end

  create_table "delayed_jobs", force: :cascade do |t|
    t.integer  "priority",               default: 0
    t.integer  "attempts",               default: 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by",  limit: 255
    t.string   "queue",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["priority", "run_at"], name: "delayed_jobs_priority", using: :btree
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "identifier", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "player_id"
    t.integer  "contract_id"
    t.string   "create"
    t.string   "destroy"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["player_id"], name: "index_jobs_on_player_id", using: :btree
  end

  create_table "managements", force: :cascade do |t|
    t.string   "name",               limit: 255
    t.string   "manageagement_code", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "message_copies", force: :cascade do |t|
    t.integer  "sent_messageable_id"
    t.string   "sent_messageable_type", limit: 255
    t.integer  "recipient_id"
    t.string   "subject",               limit: 255
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["sent_messageable_id", "recipient_id"], name: "outbox_idx", using: :btree
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "received_messageable_id"
    t.string   "received_messageable_type", limit: 255
    t.integer  "sender_id"
    t.string   "subject",                   limit: 255
    t.text     "body"
    t.boolean  "opened",                                default: false
    t.boolean  "deleted",                               default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["received_messageable_id", "sender_id"], name: "inbox_idx", using: :btree
  end

  create_table "notes", force: :cascade do |t|
    t.text     "body"
    t.integer  "contract_id"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["contract_id"], name: "index_notes_on_contract_id", using: :btree
    t.index ["user_id"], name: "index_notes_on_user_id", using: :btree
  end

  create_table "players", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "management_id"
    t.string   "position_type"
    t.string   "home_phone"
    t.string   "work_phone"
    t.string   "cell_phone"
    t.string   "email"
    t.string   "regular_rate"
    t.integer  "actcode_id"
    t.boolean  "status"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "content"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "quotes", force: :cascade do |t|
    t.date     "date_of_event"
    t.time     "event_start_time"
    t.time     "event_end_time"
    t.string   "act_form",                 limit: 255
    t.string   "agent",                    limit: 255
    t.integer  "actcode_id"
    t.integer  "client_id"
    t.string   "credit_card_fee",          limit: 255
    t.string   "reception_location",       limit: 255
    t.string   "cocktails_charge",         limit: 255
    t.string   "early_setup_charge",       limit: 255
    t.time     "early_setup_time"
    t.string   "contract_price",           limit: 255
    t.string   "charge_per_horn",          limit: 255
    t.string   "other_charges",            limit: 255
    t.string   "cocktail_instrumentation", limit: 255
    t.time     "cocktail_time"
    t.date     "confirmation_date"
    t.string   "contract_sent_date",       limit: 255
    t.date     "date_of_ceremony"
    t.string   "charge_per_dancer",        limit: 255
    t.string   "number_of_dancers",        limit: 255
    t.string   "giveaways",                limit: 255
    t.string   "giveaways_charge",         limit: 255
    t.string   "dj_tech_charge",           limit: 255
    t.string   "tech",                     limit: 255
    t.string   "number_of_horns",          limit: 255
    t.string   "type_of_light_show",       limit: 255
    t.integer  "location_id"
    t.string   "base_price_of_act",        limit: 255
    t.string   "contract_status",          limit: 255
    t.string   "type_of_act",              limit: 255
    t.string   "type_of_event",            limit: 255
    t.boolean  "party_planner"
    t.text     "act_notes"
    t.text     "contract_provisions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", force: :cascade do |t|
    t.string   "message",    limit: 255
    t.string   "username",   limit: 255
    t.integer  "item"
    t.string   "table",      limit: 255
    t.integer  "month"
    t.bigint   "year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["item", "table", "month", "year"], name: "index_histories_on_item_and_table_and_month_and_year", using: :btree
  end

  create_table "record_histories", force: :cascade do |t|
    t.string   "item_type",      limit: 255, null: false
    t.integer  "item_id",                    null: false
    t.string   "attr_name",      limit: 255
    t.text     "old_value_dump"
    t.text     "new_value_dump"
    t.string   "author_type",    limit: 255
    t.integer  "author_id"
    t.datetime "created_at"
    t.decimal  "transaction_id",             null: false
    t.index ["author_type", "author_id"], name: "index_record_histories_on_author_type_and_author_id", using: :btree
    t.index ["item_type", "item_id", "attr_name"], name: "index_record_histories_on_item_type_and_item_id_and_attr_name", using: :btree
    t.index ["item_type", "item_id"], name: "index_record_histories_on_item_type_and_item_id", using: :btree
    t.index ["transaction_id"], name: "index_record_histories_on_transaction_id", using: :btree
  end

  create_table "reports", force: :cascade do |t|
    t.string   "time",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "specs", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name",    limit: 255
    t.string   "last_name",     limit: 255
    t.string   "gender",        limit: 255
    t.integer  "management_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "provider",         limit: 255
    t.string   "uid",              limit: 255
    t.string   "name",             limit: 255
    t.string   "oauth_token",      limit: 255
    t.datetime "oauth_expires_at"
    t.string   "email",            limit: 255
    t.string   "image",            limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 128, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "roles_mask"
    t.integer  "management_id"
    t.boolean  "manager",                            default: false
    t.string   "first_name",             limit: 255
    t.string   "last_name",              limit: 255
    t.string   "phone_number",           limit: 255
    t.string   "authentication_token",   limit: 255
    t.string   "rpx_identifier",         limit: 255
    t.string   "actcode_name",           limit: 255
    t.datetime "confirmed_at"
    t.string   "confirmation_token",     limit: 255
    t.datetime "confirmation_sent_at"
    t.boolean  "approved",                           default: false, null: false
    t.string   "type"
    t.index ["approved"], name: "index_users_on_approved", using: :btree
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",      limit: 255, null: false
    t.integer  "item_id",                    null: false
    t.string   "event",          limit: 255, null: false
    t.string   "whodunnit",      limit: 255
    t.text     "object"
    t.datetime "created_at"
    t.text     "object_changes"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id", using: :btree
  end

  add_foreign_key "notes", "contracts"
  add_foreign_key "notes", "users"
end
