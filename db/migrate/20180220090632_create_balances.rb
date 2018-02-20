class CreateBalances < ActiveRecord::Migration[5.1]
  def change
    create_table :balances do |t|
      t.integer :account_id	
      t.integer :asset_id
      t.string :crypto_name
      t.float :crypto_amount
      t.float :aud_amount
      t.date :payout_date
      t.timestamps
    end
    add_index :balances , :account_id
    add_index :balances , :asset_id
  end
end
