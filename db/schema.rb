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

ActiveRecord::Schema.define(version: 20131108022242) do

  create_table "actas", force: true do |t|
    t.date     "fecha"
    t.string   "lugar"
    t.string   "tipo_reunion"
    t.text     "orden_dia"
    t.text     "desarrollo"
    t.text     "concluciones"
    t.text     "tareas"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "actas", ["user_id"], name: "index_actas_on_user_id", using: :btree

  create_table "articulos", force: true do |t|
    t.string   "titulo"
    t.string   "contenido"
    t.string   "imagen"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "articulos", ["user_id"], name: "index_articulos_on_user_id", using: :btree

  create_table "comentarios", force: true do |t|
    t.text     "comentario"
    t.integer  "user_id"
    t.integer  "articulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comentarios", ["articulo_id"], name: "index_comentarios_on_articulo_id", using: :btree
  add_index "comentarios", ["user_id"], name: "index_comentarios_on_user_id", using: :btree

  create_table "eventos", force: true do |t|
    t.string   "lugar"
    t.date     "fecha"
    t.text     "contenido"
    t.string   "imagen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "foros", force: true do |t|
    t.text     "tema"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "foros", ["user_id"], name: "index_foros_on_user_id", using: :btree

  create_table "integrantes", force: true do |t|
    t.string   "nombre"
    t.string   "apellido_1"
    t.string   "apellido_2"
    t.text     "perfil"
    t.integer  "telefono"
    t.string   "imagen"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "integrantes", ["user_id"], name: "index_integrantes_on_user_id", using: :btree

  create_table "proyectos", force: true do |t|
    t.string   "titulo"
    t.text     "contenido"
    t.string   "imagen"
    t.string   "etapa"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "proyectos_users", force: true do |t|
    t.integer  "user_id"
    t.integer  "proyecto_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "proyectos_users", ["proyecto_id"], name: "index_proyectos_users_on_proyecto_id", using: :btree
  add_index "proyectos_users", ["user_id"], name: "index_proyectos_users_on_user_id", using: :btree

  create_table "respuestas", force: true do |t|
    t.text     "respuesta"
    t.integer  "user_id"
    t.integer  "articulo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "respuestas", ["articulo_id"], name: "index_respuestas_on_articulo_id", using: :btree
  add_index "respuestas", ["user_id"], name: "index_respuestas_on_user_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
  add_index "roles", ["name"], name: "index_roles_on_name", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_roles", id: false, force: true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree

end
