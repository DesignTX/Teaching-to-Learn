class AddingLatitudeLongitude < ActiveRecord::Migration[5.2]
  def change
    # add_column table_name, :column_name, :column_type
    add_column :posts, :latitude, :decimal
    add_column :posts, :longitude, :decimal
  end
end
