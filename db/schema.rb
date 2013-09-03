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

ActiveRecord::Schema.define(:version => 20130625140036) do

  create_table "dinamicas", :force => true do |t|
    t.string   "cor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dinossauros", :force => true do |t|
    t.string   "nome_do_homem"
    t.string   "telefone"
    t.string   "igreja"
    t.string   "email"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "genero"
    t.integer  "dinamica_id"
    t.string   "nome_da_mulher"
  end

  create_table "encontristas", :force => true do |t|
    t.string   "nome_do_homem"
    t.string   "endereco"
    t.string   "telefone"
    t.string   "celular"
    t.string   "email"
    t.string   "igreja"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "casal"
    t.string   "genero"
    t.text     "obs_saude"
    t.integer  "dinamica_id"
    t.string   "nome_da_mulher"
  end

  create_table "participants", :force => true do |t|
    t.string   "address"
    t.string   "phone"
    t.string   "cel_phone"
    t.string   "email"
    t.string   "church"
    t.string   "couple"
    t.text     "health_obs"
    t.integer  "children"
    t.string   "name"
    t.string   "full_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "address"
    t.string   "phone"
    t.string   "cel_phone"
    t.string   "email"
    t.string   "church"
    t.text     "health_obs"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
