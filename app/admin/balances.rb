ActiveAdmin.register Balance do
  #before_action :active_assets, only: :index
  actions :all
  permit_params :crypto_name, :crypto_amount, :payout_date

  scope :unreturned_assets
  scope :returned_assets

  # controller do
  #   def active_assets
  #     print "------------------------------------------------------>>>>>>>>>>>>>"
  #     @lists = Balance.joins(:asset).where(assets: { return_request: false})
  #     #binding.pry
  #     @balances = @lists.page(1).per(10)
  #   end
  #end
end
