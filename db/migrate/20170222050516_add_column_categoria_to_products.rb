class AddColumnCategoriaToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :categoria, :string
  end
end
