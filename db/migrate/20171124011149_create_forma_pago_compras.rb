class CreateFormaPagoCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :forma_pago_compras do |t|
      t.string :nombre_forma_pago

      t.timestamps
    end
  end
end
