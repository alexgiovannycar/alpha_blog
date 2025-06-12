class AddDescription < ActiveRecord::Migration[8.0]
  def change
    # Guard against running this migration on databases created after the
    # column was added to the initial table definition.
    unless column_exists?(:articles, :description)
      add_column :articles, :description, :text
    end
  end
end
