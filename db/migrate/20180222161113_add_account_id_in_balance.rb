class AddAccountIdInBalance < ActiveRecord::Migration[5.1]
  def change
    add_column :balances, :account_id, :integer
  end
end
