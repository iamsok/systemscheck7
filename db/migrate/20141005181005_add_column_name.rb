class AddColumnName < ActiveRecord::Migration
  def change
    add_column :cars, :name, :string
  end
end
