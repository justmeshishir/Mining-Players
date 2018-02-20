class AddColumnInAssets < ActiveRecord::Migration[5.1]
  def change
  	add_column :assets, :account_id, :integer
  	add_index :assets, :account_id
  end
end
