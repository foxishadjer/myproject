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

ActiveRecord::Schema.define(version: 20161129203655) do

  create_table "offres", force: :cascade do |t|
    t.string   "poste"
    t.text     "descripotion_p"
    t.string   "lieu"
    t.text     "ceitere"
    t.date     "date_pub"
    t.string   "duree"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "profil_id"
  end

  create_table "profils", force: :cascade do |t|
    t.string   "societe"
    t.string   "logo"
    t.integer  "tel"
    t.string   "email"
    t.string   "adresse"
    t.text     "description"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "secteur_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  create_table "secteurs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
