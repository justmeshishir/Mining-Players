class AdStatusInAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :assets, :status, :integer, default: 0
  end
end
