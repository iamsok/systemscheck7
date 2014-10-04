class AddColumnCarName < ActiveRecord::Migration
  def change
    add_column :cars, :name, :integer
  end
end
