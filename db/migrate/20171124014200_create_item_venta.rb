class CreateItemVenta < ActiveRecord::Migration[5.1]
  def change
    create_table :item_venta do |t|
      t.timestamp :fecha_venta
      t.integer :cantidad_producto
      t.integer :descuento
      t.integer :total_venta
      t.references :productos, index: true
      t.references :venta, index: true
      t.timestamps
    end
  end
end
