class AddIndexToAssetIdInPayouts < ActiveRecord::Migration[5.1]
  def change
    add_index :payouts, :asset_id
  end
end
