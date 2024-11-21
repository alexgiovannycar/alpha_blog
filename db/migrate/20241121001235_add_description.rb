class AddDescription < ActiveRecord::Migration[8.0]
  def change
    add_column :articles, :description, :text
  end
end
