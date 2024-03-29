class WithdrawsController < ApplicationController
	before_action :authenticate_account!
	def index
		#@method = current_account.receive_type
		@wallet = Wallet.where(account_id: current_account.id).last
		#@banks = Bank.where(account_id: current_account.id).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
		#@total_bank_withdraw = Bank.where(account_id: current_account.id, confirm: true).sum("amount")
		#@total_wallet_withdraw = Wallet.where(account_id: current_account.id, confirm: true).sum("amount")
		@assets = Asset.where(account_id: current_account.id)
		@payouts = Payout.where(asset_id: current_account.assets.ids).order("created_at DESC").paginate(:page => params[:page], :per_page => 3)
		@total_payouts = Payout.where(asset_id: current_account.assets.ids).sum("payout_amount")
	end
end
