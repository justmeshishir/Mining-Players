ActiveAdmin.register Balance do
  #before_action :active_assets, only: :index
  actions :all
  permit_params :crypto_name, :crypto_amount, :payout_date

  scope :unreturned_assets
  scope :returned_assets

  index do
    column :id
    column :asset
    column :crypto_name
    column :crypto_amount
    column "Last Payout Date", :payout_date
    column :account
    actions
  end

  member_action :payout, :method => :get do
    balance = Balance.find(params[:id])
    Payout.create(asset_id: balance.asset_id, payout_amount: balance.crypto_amount, payout_date: Date.today)
    balance.update(crypto_amount: 0.0, payout_date: Date.today)
    redirect_to admin_balance_path(balance), notice: "Payout Successsful."
  end

  action_item :payout, only: :show do
    balance = Balance.find(params[:id])
    if balance.payout_date == Date.today
      link_to 'Paid'
    else
      link_to 'Payout', payout_admin_balance_path
    end
  end

end
