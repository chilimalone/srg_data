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

ActiveRecord::Schema.define(:version => 20130709071437) do

  create_table "agents", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "buildings", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.text     "comments"
    t.integer  "owner_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "buildings", ["owner_id"], :name => "index_buildings_on_owner_id"

  create_table "clients", :force => true do |t|
    t.text     "comments"
    t.string   "file_number"
    t.text     "source"
    t.string   "company"
    t.date     "date_received"
    t.boolean  "confirmed"
    t.text     "client_comments"
    t.integer  "individual_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.decimal  "price",           :precision => 2, :scale => 0
  end

  create_table "individuals", :force => true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "phone"
    t.string   "street_1"
    t.string   "string_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "leases", :force => true do |t|
    t.integer  "building_id"
    t.integer  "property_id"
    t.integer  "agent_id"
    t.date     "move_out"
    t.date     "move_in"
    t.boolean  "welcome_home"
    t.boolean  "thank_you_sent"
    t.date     "dropped_date"
    t.text     "comment"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.decimal  "rental_amount",  :precision => 2, :scale => 0
    t.decimal  "referal_amount", :precision => 2, :scale => 0
  end

  add_index "leases", ["agent_id"], :name => "index_leases_on_agent_id"
  add_index "leases", ["building_id"], :name => "index_leases_on_building_id"
  add_index "leases", ["property_id"], :name => "index_leases_on_property_id"

  create_table "owners", :force => true do |t|
    t.string   "name"
    t.string   "contactInfo"
    t.text     "comments"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "properties", :force => true do |t|
    t.string   "street_1"
    t.string   "street_2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.text     "comments"
    t.integer  "individual_id"
    t.integer  "agent_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "rooms", :force => true do |t|
    t.integer  "room_number"
    t.integer  "properties_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "rooms", ["room_number"], :name => "index_rooms_on_room_number"

  create_table "sales", :force => true do |t|
    t.string   "buyer"
    t.boolean  "hear"
    t.date     "closing_date"
    t.string   "company"
    t.string   "office_number"
    t.integer  "buyer_id"
    t.integer  "agent_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tenants", :force => true do |t|
    t.date     "leased_signed"
    t.date     "lease_expired"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "room_id"
    t.integer  "individual_id"
  end

  create_table "tours", :force => true do |t|
    t.date     "date"
    t.integer  "room_number"
    t.text     "comment"
    t.integer  "client_id"
    t.integer  "property_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
