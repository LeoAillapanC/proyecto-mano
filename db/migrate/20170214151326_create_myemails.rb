class CreateMyemails < ActiveRecord::Migration[5.0]
  def change
    create_table :myemails do |t|
      t.string :email
      t.string :ip
      t.integer :state

      t.timestamps
    end
  end
end
