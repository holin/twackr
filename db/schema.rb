# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100524080258) do

  create_table "clients", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
  end

  create_table "entries", :force => true do |t|
    t.string   "content",        :default => "", :null => false
    t.string   "content_html",   :default => "", :null => false
    t.integer  "service_id"
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "original_start"
    t.datetime "start_date"
    t.datetime "done_date"
    t.integer  "seconds",        :default => 0
    t.integer  "seconds_limit"
  end

  create_table "projects", :force => true do |t|
    t.integer "user_id"
    t.integer "client_id",       :default => 0, :null => false
    t.string  "name"
    t.string  "tag"
    t.integer "last_service_id"
  end

  create_table "services", :force => true do |t|
    t.integer "user_id"
    t.string  "name"
    t.string  "tag"
    t.integer "rate"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "salt"
    t.string   "token"
    t.string   "timezone",                                                   :null => false
    t.integer  "rate",                                    :default => 0
    t.boolean  "confirmed",                               :default => false
    t.boolean  "admin",                                   :default => false
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.integer  "default_project_id",                      :default => 0,     :null => false
    t.integer  "default_client_id",                       :default => 0,     :null => false
    t.integer  "default_service_id",                      :default => 0,     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
