class AssetsController < ApplicationController
	before_action :authenticate_account!, only:[:new,:create] 
	def index
		@assets = Asset.where(account_id: current_account.id)
	end			
	def create
		@assets = current_account.assets.create(asset_params)
		if @assets.valid?
			redirect_to assets_path
		else
			render :index,status: :unprocessable_entity
		end		
	end	

	def return
		Asset.where(id: params[:id]).update(return_request: true , return_request_date: Date.today)
		redirect_to assets_path
	end

	def unreturn
		Asset.where(id: params[:id]).update(return_request: false)
		redirect_to assets_path
	end

	private
	def asset_params
		params.require(:asset).permit(:account_id,:name,:make,:model,:memory)
	end	

	#def update_params
		#params.require(:asset).permit(:requet_return, ret_date: Date)
	#end
end
