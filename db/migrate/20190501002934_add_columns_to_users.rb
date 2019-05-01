class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    # add_column table_name, :column_name, :column_type
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :location, :string
    add_column :users, :aboutme, :string

  end
end
