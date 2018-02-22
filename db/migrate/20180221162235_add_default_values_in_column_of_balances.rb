class AddDefaultValuesInColumnOfBalances < ActiveRecord::Migration[5.1]
  def change
  	change_column :balances , :crypto_amount , :float , default: 0.0
  	change_column :balances , :aud_amount , :float , default: 0.0
  end
end
