class RemoveColumnManufacturer < ActiveRecord::Migration
  def change
    remove_column :cars, :manufacturer, :string
  end
end
