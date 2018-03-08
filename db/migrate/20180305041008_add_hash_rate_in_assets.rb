class AddHashRateInAssets < ActiveRecord::Migration[5.1]
  def change
    add_column :assets, :hash_rate, :integer, default: 0
  end
end
