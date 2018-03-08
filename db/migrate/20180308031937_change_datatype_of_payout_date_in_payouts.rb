class ChangeDatatypeOfPayoutDateInPayouts < ActiveRecord::Migration[5.1]
  def change
    remove_column :payouts, :payout_date
    add_column :payouts, :payout_date, :date
  end
end
