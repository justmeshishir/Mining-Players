class WalletsController < ApplicationController
	before_action :authenticate_account!

	def create
			@wallets = current_account.wallets.create(wallet_params)
			if @wallets.valid?
				redirect_to withdraws_path
			else
				redirect_to withdraws_path
				flash[:alert] = "Please enter valid wallet address"
			end
		end

	private
	def wallet_params
		total_wallet = Balance.where(account_id: current_account.id).sum("crypto_amount")
		params.require(:wallet).permit(:account_id,:address,:date).merge(amount: total_wallet)
	end
end
