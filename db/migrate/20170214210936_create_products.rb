class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :pricing
      t.text :description
      t.integer :stock
      t.references :user, foreign_key: true
      t.attachment :avatar
      t.timestamps
    end
  end
end
