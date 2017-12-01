class CreateItemCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :item_compras do |t|
      t.timestamp :fecha_compra
      t.string :estado_compra
      t.integer :cantidad_producto
      t.integer :descuento
      t.integer :total_compra
      t.references :compras, index: true
      t.references :productos, index: true
      t.timestamps
    end
  end
end
