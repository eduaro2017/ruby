class CreateProductos < ActiveRecord::Migration[5.1]
  def change
    create_table :productos do |t|
      t.string :nombre_producto
      t.string :tipo
      t.integer :stock
      t.integer :precio_compra
      t.integer :precio_venta
      t.references :proveedors, index: true
      t.timestamps
    end
  end
end
