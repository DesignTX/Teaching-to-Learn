class AddAmountToItems < ActiveRecord::Migration[5.2]
  def change
      # add_column table_name, :column_name, :column_type
      add_column :posts, :title, :string
      add_column :posts, :content, :string
  end
end