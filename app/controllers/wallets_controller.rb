class WalletsController < ApplicationController
	
	def create
		@wallets = current_account.wallets.create(wallet_params)
		if @wallets.valid?
			redirect_to withdraws_path
		else
			render :index,status: :unprocessable_entity
		end		

	end	
	private
	def wallet_params
		params.require(:wallet).permit(:account_id,:address,:date)
	end	
end
