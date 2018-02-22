class WithdrawsController < ApplicationController
	before_action :authenticate_account!
	def index
		@method = current_account.receive_type
	end
end
