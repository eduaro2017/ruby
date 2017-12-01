class CreateVenta < ActiveRecord::Migration[5.1]
  def change
    create_table :venta do |t|
      t.integer :mesa
      t.integer :piso
      t.references :empleados, index: true
      t.references :forma_pago_venta, index: true
      t.timestamps
    end
  end
end
