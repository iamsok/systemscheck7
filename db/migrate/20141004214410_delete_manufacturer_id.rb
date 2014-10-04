class DeleteManufacturerId < ActiveRecord::Migration
  def change
    remove_column :manufacturers, :manufacturer_id
  end
end
