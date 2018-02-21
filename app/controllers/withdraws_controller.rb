class WithdrawsController < ApplicationController
	def index
		@method = current_account.receive_type
	end	
end
