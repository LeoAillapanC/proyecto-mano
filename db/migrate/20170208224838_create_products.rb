class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :nombre
      t.decimal :precio, scale: 2, precision: 10
      t.text :descripcion
      t.attachment :avatar

      t.timestamps null: false
    end
  end
end
