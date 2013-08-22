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

ActiveRecord::Schema.define(:version => 20130822002853) do

  create_table "aliances", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "moons", :force => true do |t|
    t.integer  "planet_id"
    t.decimal  "position"
    t.decimal  "mass"
    t.integer  "tipo"
    t.integer  "atmosphere"
    t.integer  "metal"
    t.integer  "water"
    t.integer  "amoniate"
    t.integer  "carbone"
    t.integer  "n_p"
    t.integer  "fissionable_material"
    t.integer  "mediumtemp"
    t.integer  "aliance_id"
    t.integer  "user_id"
    t.integer  "organicA"
    t.integer  "organicB"
    t.integer  "organicC"
    t.integer  "metal_cristal"
    t.integer  "habitables"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "moons", ["aliance_id"], :name => "index_moons_on_aliance_id"
  add_index "moons", ["planet_id"], :name => "index_moons_on_planet_id"
  add_index "moons", ["user_id"], :name => "index_moons_on_user_id"

  create_table "planets", :force => true do |t|
    t.integer  "star_id"
    t.decimal  "position"
    t.decimal  "mass"
    t.integer  "tipo"
    t.integer  "atmosphere"
    t.integer  "metal"
    t.integer  "water"
    t.integer  "amoniate"
    t.integer  "carbone"
    t.integer  "n_p"
    t.integer  "fissionable_material"
    t.integer  "mediumtemp"
    t.integer  "aliance_id"
    t.integer  "user_id"
    t.integer  "organicA"
    t.integer  "organicB"
    t.integer  "organicC"
    t.integer  "metal_cristal"
    t.integer  "habitables"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  add_index "planets", ["aliance_id"], :name => "index_planets_on_aliance_id"
  add_index "planets", ["star_id"], :name => "index_planets_on_star_id"
  add_index "planets", ["user_id"], :name => "index_planets_on_user_id"

  create_table "stars", :force => true do |t|
    t.string   "name"
    t.integer  "x"
    t.integer  "y"
    t.integer  "z"
    t.float    "mass"
    t.decimal  "radium"
    t.decimal  "luminosity"
    t.integer  "temp"
    t.integer  "color"
    t.string   "clase"
    t.integer  "aliance_id"
    t.integer  "user_id"
    t.text     "near"
    t.decimal  "intern_line"
    t.decimal  "hot_line"
    t.decimal  "snow_line"
    t.decimal  "cool_line"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "stars", ["aliance_id"], :name => "index_stars_on_aliance_id"
  add_index "stars", ["user_id"], :name => "index_stars_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password"
    t.integer  "aliance_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["aliance_id"], :name => "index_users_on_aliance_id"

end
