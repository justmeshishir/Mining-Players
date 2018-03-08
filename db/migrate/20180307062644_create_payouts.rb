class CreatePayouts < ActiveRecord::Migration[5.1]
  def change
    create_table :payouts do |t|
      t.integer :asset_id
      t.integer :payout_amount
      t.integer :payout_date
      t.timestamps
    end
  end
end
