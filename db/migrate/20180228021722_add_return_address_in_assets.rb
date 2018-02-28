class AddReturnAddressInAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :assets, :return_request_address, :string
  end
end
