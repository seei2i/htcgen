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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140114172016) do

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.integer  "state_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "slug"
    t.string   "btc_title"
    t.string   "btc_meta"
    t.string   "btc_h1"
    t.text     "btc_h1section"
    t.string   "btc_h2"
    t.text     "btc_h2section"
    t.string   "btc_h3a"
    t.text     "btc_h3asection"
    t.string   "btc_h3b"
    t.text     "btc_h3bsection"
    t.string   "btc_h3c"
    t.text     "btc_h3csection"
    t.string   "std_title"
    t.string   "std_meta"
    t.string   "std_h1"
    t.text     "std_h1section"
    t.string   "std_h2"
    t.text     "std_h2section"
    t.string   "std_h3a"
    t.text     "std_h3asection"
    t.string   "std_h3b"
    t.text     "std_h3bsection"
    t.string   "std_h3c"
    t.text     "std_h3csection"
    t.string   "population"
    t.string   "liver_num"
    t.string   "kidney_num"
    t.string   "prostate_num"
    t.string   "stroke_num"
    t.string   "all_cancers_num"
    t.string   "coronary_num"
    t.string   "diabetes_num"
    t.string   "total_d_num"
    t.text     "std_stats"
  end

  add_index "cities", ["slug"], :name => "index_cities_on_slug"
  add_index "cities", ["state_id"], :name => "index_cities_on_state_id"

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0, :null => false
    t.integer  "attempts",   :default => 0, :null => false
    t.text     "handler",                   :null => false
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "locations", :force => true do |t|
    t.string   "weblink"
    t.string   "name"
    t.string   "address"
    t.integer  "city_id"
    t.integer  "state_id"
    t.string   "zip"
    t.string   "hours"
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "slug"
  end

  add_index "locations", ["city_id"], :name => "index_locations_on_city_id"
  add_index "locations", ["slug"], :name => "index_locations_on_slug"
  add_index "locations", ["state_id"], :name => "index_locations_on_state_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "states", :force => true do |t|
    t.string   "name"
    t.string   "abbr"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "slug"
    t.string   "title"
    t.string   "meta"
    t.string   "h1"
    t.text     "h1section"
    t.string   "h2"
    t.text     "h2section"
    t.string   "population"
    t.string   "h1sub1"
    t.text     "h1sub1section"
    t.string   "h1sub2"
    t.text     "h1sub2section"
    t.string   "h1sub3"
    t.text     "h1sub3section"
    t.string   "h1sub4"
    t.text     "h1sub4section"
    t.string   "h1sub5"
    t.text     "h1sub5section"
    t.string   "h1sub6"
    t.text     "h1sub6section"
    t.string   "hlocations"
    t.string   "h3"
    t.text     "h3section"
  end

  add_index "states", ["slug"], :name => "index_states_on_slug"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0,  :null => false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

end
