class CreateProveedors < ActiveRecord::Migration[5.1]
  def change
    create_table :proveedors do |t|
      t.string :nombre_proveedor
      t.string :razon_social
      t.string :email
      t.string :telefono
      t.string :direccion
      t.string :comuna
      t.string :region

      t.timestamps
    end
  end
end
