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

ActiveRecord::Schema.define(version: 20161129091941) do

  create_table "demandes", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "demandeur_id"
  end

  create_table "demandeurs", force: :cascade do |t|
    t.string   "nom"
    t.string   "prenom"
    t.integer  "tel"
    t.string   "email"
    t.string   "adresse"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "diplome_id"
    t.integer  "experience_id"
    t.integer  "demande_id"
  end

  create_table "diplomes", force: :cascade do |t|
    t.string   "titre_diplome"
    t.date     "date_obtention"
    t.string   "universite"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "demandeur_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "nom_entreprise"
    t.text     "titre_poste"
    t.date     "date_d"
    t.date     "date_f"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "demandeur_id"
  end

end
