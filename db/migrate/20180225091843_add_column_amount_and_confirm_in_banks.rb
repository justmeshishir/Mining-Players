class AddColumnAmountAndConfirmInBanks < ActiveRecord::Migration[5.1]
  def change
    add_column :banks, :amount, :float
    add_column :banks, :confirm, :boolean, default: false
  end
end
