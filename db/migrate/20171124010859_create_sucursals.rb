class CreateSucursals < ActiveRecord::Migration[5.1]
  def change
    create_table :sucursals do |t|
      t.string :nombre_sucursal
      t.string :telefono
      t.string :direccion
      t.string :comuna
      t.string :region
      t.references :empleados, index: true
      t.timestamps
    end
  end
end
