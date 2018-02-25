class AddDescriptionAndSerialNumberInAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :assets, :serial_number, :string
    add_column :assets, :description, :text
  end
end
