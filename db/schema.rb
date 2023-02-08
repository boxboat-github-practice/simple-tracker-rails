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

ActiveRecord::Schema.define(version: 0) do

  create_table "_clients_get_requests", id: false, force: :cascade do |t|
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "_employees_get_requests", id: false, force: :cascade do |t|
    t.string   "name"
    t.string   "github"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clients", id: false, force: :cascade do |t|
    t.integer  "id"
    t.string   "name"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contract_patches", id: false, force: :cascade do |t|
    t.integer  "client_id"
    t.string   "type"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "tech"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", id: false, force: :cascade do |t|
    t.integer  "id"
    t.integer  "client_id"
    t.string   "type"
    t.string   "start_date"
    t.string   "end_date"
    t.string   "tech"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", id: false, force: :cascade do |t|
    t.integer  "id"
    t.string   "name"
    t.string   "github"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "histories", id: false, force: :cascade do |t|
    t.integer  "id"
    t.integer  "client_id"
    t.integer  "contract_id"
    t.integer  "employee_id"
    t.string   "client_name"
    t.string   "employee_name"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "history_patches", id: false, force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "contract_id"
    t.integer  "employee_id"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
