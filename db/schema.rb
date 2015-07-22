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

ActiveRecord::Schema.define(version: 20150713014206) do

  create_table "captures", force: :cascade do |t|
    t.integer  "empleado_id"
    t.integer  "incident_id"
    t.date     "fecha_inicial"
    t.date     "fecha_final"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "vacation_id"
    t.integer  "qna_id"
  end

  add_index "captures", ["empleado_id"], name: "index_captures_on_empleado_id"
  add_index "captures", ["incident_id"], name: "index_captures_on_incident_id"

  create_table "centros", force: :cascade do |t|
    t.integer  "centro_iden"
    t.string   "centro_descripcion"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "departamentos", force: :cascade do |t|
    t.string   "dpto_descripcion"
    t.integer  "centro_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido_materno"
    t.string   "apellido_paterno"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "centro_id"
    t.integer  "departamento_id"
    t.integer  "puesto_id"
    t.boolean  "turno_id"
    t.integer  "num_empleado"
    t.boolean  "activo"
  end

  create_table "incidencia", force: :cascade do |t|
    t.integer  "cod"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "incidents", force: :cascade do |t|
    t.integer  "cod"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puestos", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qnas", force: :cascade do |t|
    t.integer  "qna_cod"
    t.string   "qna_year"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "activate",   default: false
  end

  create_table "turnos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.boolean  "permission_level",       default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vacations", force: :cascade do |t|
    t.integer  "period"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
