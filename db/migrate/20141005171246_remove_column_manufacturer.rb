class RemoveColumnManufacturer < ActiveRecord::Migration
  def change
    remove_column :cars, :manufacturer
  end
end
