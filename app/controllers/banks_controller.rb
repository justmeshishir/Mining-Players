class BanksController < ApplicationController
  before_action :authenticate_account!

	def create

		@banks = current_account.banks.create(bank_params)
		if @banks.valid?
			redirect_to withdraws_path
		else
			redirect_to withdraws_path
      flash[:alert] = "Please fill up all fields"
		end

	end
	private
	def bank_params
    total_bank = Balance.where(account_id: current_account.id).sum("aud_amount")
    #binding.pry
		params.require(:bank).permit(:account_id,:name,:bsb,:account_number).merge(amount: total_bank)
	end
end
