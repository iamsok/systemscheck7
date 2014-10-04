class AddColumnManufacturerId < ActiveRecord::Migration
  def change
    add_column :manufacturers, :manufacturer_id, :integer
  end
end
