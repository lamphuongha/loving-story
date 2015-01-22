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

ActiveRecord::Schema.define(version: 20150110083747) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "service_orders", force: :cascade do |t|
    t.string   "email"
    t.string   "his_name"
    t.string   "her_name"
    t.text     "his_story"
    t.text     "her_story"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "status",                    default: 0
    t.text     "our_relationship"
    t.string   "your_name"
    t.string   "domain"
    t.string   "header_image_file_name"
    t.string   "header_image_content_type"
    t.integer  "header_image_file_size"
    t.datetime "header_image_updated_at"
  end

end
