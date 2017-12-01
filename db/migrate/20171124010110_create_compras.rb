class CreateCompras < ActiveRecord::Migration[5.1]
  def change
    create_table :compras do |t|
      t.references :empleados, index: true
      t.references :proveedors, index: true
      t.timestamps
    end
  end
end
