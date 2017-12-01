class CreateFormaPagoVenta < ActiveRecord::Migration[5.1]
  def change
    create_table :forma_pago_venta do |t|
      t.string :nombre_forma_pago

      t.timestamps
    end
  end
end
