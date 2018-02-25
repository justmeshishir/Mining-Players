class WithdrawsController < ApplicationController
	before_action :authenticate_account!
	def index
		@method = current_account.receive_type
		@wallets = Wallet.where(account_id: current_account.id).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
		@banks = Bank.where(account_id: current_account.id).order("created_at DESC").paginate(:page => params[:page], :per_page => 10)
		@total_bank_withdraw = Bank.where(account_id: current_account.id, confirm: true).sum("amount")
		@total_wallet_withdraw = Wallet.where(account_id: current_account.id, confirm: true).sum("amount")
	end
end
