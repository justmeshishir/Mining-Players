class AddTransactionIdInPayouts < ActiveRecord::Migration[5.1]
  def change
    add_column :payouts, :transaction_id, :string
  end
end
