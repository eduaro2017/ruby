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

ActiveRecord::Schema.define(version: 20171124014200) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cargos", force: :cascade do |t|
    t.string "cargo"
    t.integer "salario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "compras", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "telefono"
    t.string "email"
    t.integer "edad"
    t.string "direccion"
    t.string "comuna"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forma_pago_compras", force: :cascade do |t|
    t.string "nombre_forma_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "forma_pago_venta", force: :cascade do |t|
    t.string "nombre_forma_pago"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_compras", force: :cascade do |t|
    t.datetime "fecha_compra"
    t.string "estado_compra"
    t.integer "cantidad_producto"
    t.integer "descuento"
    t.integer "total_compra"
    t.bigint "compras_id"
    t.bigint "productos_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["compras_id"], name: "index_item_compras_on_compras_id"
    t.index ["productos_id"], name: "index_item_compras_on_productos_id"
  end

  create_table "item_venta", force: :cascade do |t|
    t.datetime "fecha_venta"
    t.integer "cantidad_producto"
    t.integer "descuento"
    t.integer "total_venta"
    t.bigint "productos_id"
    t.bigint "venta_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["productos_id"], name: "index_item_venta_on_productos_id"
    t.index ["venta_id"], name: "index_item_venta_on_venta_id"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nombre_producto"
    t.string "tipo"
    t.integer "stock"
    t.integer "precio_compra"
    t.integer "precio_venta"
    t.bigint "proveedors_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proveedors_id"], name: "index_productos_on_proveedors_id"
  end

  create_table "proveedors", force: :cascade do |t|
    t.string "nombre_proveedor"
    t.string "razon_social"
    t.string "email"
    t.string "telefono"
    t.string "direccion"
    t.string "comuna"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sucursals", force: :cascade do |t|
    t.string "nombre_sucursal"
    t.string "telefono"
    t.string "direccion"
    t.string "comuna"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "venta", force: :cascade do |t|
    t.integer "mesa"
    t.integer "piso"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
