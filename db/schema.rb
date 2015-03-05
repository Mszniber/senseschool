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

ActiveRecord::Schema.define(version: 20130828211712) do

  create_table "actu_images", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "actu_id"
  end

  create_table "actus", force: true do |t|
    t.string "titre"
    t.text   "texte"
  end

  create_table "articles", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "lien"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "texte"
    t.date     "dateparu"
  end

  create_table "categories", force: true do |t|
    t.string "nom"
  end

  create_table "ent_images", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "entrepreneur_id"
  end

  create_table "entrepreneurs", force: true do |t|
    t.string "nom"
    t.text   "description"
    t.string "lien"
    t.text   "nbp"
    t.string "lien2"
  end

  create_table "entreprises", force: true do |t|
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "lien"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sort"
  end

  create_table "liens", force: true do |t|
    t.string  "link"
    t.integer "actu_id"
  end

  create_table "partenaires", force: true do |t|
    t.text     "description"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "post_id"
    t.string   "link"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "defi"
    t.text     "mission"
    t.text     "competences"
    t.text     "gain"
    t.string   "lieny"
    t.string   "liendb"
    t.string   "link"
    t.integer  "entrepreneur_id"
    t.integer  "categorie_id"
    t.date     "date_debut"
    t.date     "date_fin"
    t.boolean  "open"
    t.string   "liengf"
    t.boolean  "term"
    t.date     "dfins"
    t.string   "calendar_file_name"
    t.string   "calendar_content_type"
    t.integer  "calendar_file_size"
    t.datetime "calendar_updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "temoins", force: true do |t|
    t.string   "nom"
    t.text     "phrase"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "imagecole_file_name"
    t.string   "imagecole_content_type"
    t.integer  "imagecole_file_size"
    t.datetime "imagecole_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "rang"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vidents", force: true do |t|
    t.string  "link"
    t.integer "entrepreneur_id"
    t.boolean "youvim"
  end

  create_table "videos", force: true do |t|
    t.string  "link"
    t.integer "actu_id"
    t.boolean "youvim"
  end

  create_table "vidposts", force: true do |t|
    t.string  "link"
    t.integer "post_id"
    t.boolean "youvim"
  end

end
