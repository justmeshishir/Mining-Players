class RemoveAccountIdInBalances < ActiveRecord::Migration[5.1]
  def change
  	remove_column :balances , :account_id
  end
end
