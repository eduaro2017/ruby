class CreateEmpleados < ActiveRecord::Migration[5.1]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.string :apellido
      t.integer :telefono
      t.string :email
      t.integer :edad
      t.string :direccion
      t.string :comuna
      t.string :region
      t.references :cargos, index: true
      t.timestamps
    end
  end
end
