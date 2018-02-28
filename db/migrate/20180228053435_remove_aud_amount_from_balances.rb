class RemoveAudAmountFromBalances < ActiveRecord::Migration[5.1]
  def change
    remove_column :balances, :aud_amount
  end
end
