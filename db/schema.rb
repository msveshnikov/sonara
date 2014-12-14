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

ActiveRecord::Schema.define(version: 20141125103127) do

  create_table "comments", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.integer  "word_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["word_id", "created_at"], name: "index_comments_on_word_id_and_created_at"

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "image"
  end

  create_table "words", force: true do |t|
    t.text "name"
    t.text "millera"
    t.text "vangi"
    t.text "freyda"
    t.text "nost"
    t.text "loffa"
    t.text "tsvetkova"
    t.text "hasse"
    t.text "ezoteric"
    t.text "menegetti"
    t.text "longo"
    t.text "angl"
    t.text "franz"
    t.text "assiriysky"
    t.text "sovr"
  end

end
