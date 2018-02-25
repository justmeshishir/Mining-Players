ActiveAdmin.register Bank do
  menu false
  permit_params :name, :bsb, :account_number, :amount, :confirm

  scope :confirmed
  scope :unconfirmed

  before_update do |bank|
    if bank.confirm?
      Balance.where(account_id: bank.account_id).update_all(crypto_amount: 0.0, aud_amount: 0.0)
    end
  end
end
