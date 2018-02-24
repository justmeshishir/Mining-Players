class WithdrawsController < ApplicationController
	def index
		@method = current_account.receive_type
		@wallets = Wallet.where(account_id: current_account.id)
		@banks = Bank.where(account_id: current_account.id)
	end	
end
