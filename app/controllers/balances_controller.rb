class BalancesController < ApplicationController
	before_action :authenticate_account!
	def create
		@balances = current_account.balances.create(balance_params)
	end
	private
	def balance_params
		params.require(:balance).permit(:asset_id,:crypto_name,:crypto_amount,:payout_date)
	end
end
