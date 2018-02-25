ActiveAdmin.register Wallet do
  menu false
  permit_params :account_id, :address, :date, :amount, :confirm

  before_update do |wallet|
    if wallet.confirm?
      Balance.where(account_id: wallet.account_id).update_all(crypto_amount: 0.0, aud_amount: 0.0)
    end
  end
end
