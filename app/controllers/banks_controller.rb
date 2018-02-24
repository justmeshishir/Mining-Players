class BanksController < ApplicationController

	def create
		@banks = current_account.banks.create(bank_params)
		if @banks.valid?
			redirect_to withdraws_path
		else
			render :index,status: :unprocessable_entity
		end		

	end	
	private
	def bank_params
		params.require(:bank).permit(:account_id,:name,:bsb,:account_number)
	end	

end
