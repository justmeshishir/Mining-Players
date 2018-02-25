class AddColumnAmountAndConfirmInWallet < ActiveRecord::Migration[5.1]
  def change
    add_column :wallets, :amount, :float
    add_column :wallets, :confirm, :boolean, default: false
  end
end
