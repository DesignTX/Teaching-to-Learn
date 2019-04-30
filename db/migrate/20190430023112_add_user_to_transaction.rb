class AddUserToTransaction < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.integer :price
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps

    end
  end 
end
