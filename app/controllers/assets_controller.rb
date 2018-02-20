class AssetsController < ApplicationController
	before_action :authenticate_user!, only:[:new,:create] 
	def index
				@assets = Asset.where(account_id: current_account.id)
	end			
	def create
		@assets = current_account.assets.create(asset_params)
		if @posts.valid?
				redirect_to posts_path
			else
				render :index,status: :unprocessable_entity
			end		
	end	

	def return
		Asset.where(id: params[:id]).update(request_return: true , return_date: Date.now)
	end

	def unreturn
		Asset.where(id: params[:id]).update(request_return: false)
	end

	private
	def asset_params
		params.require(:asset).permit(:account_id,:name,:make,:model,:memory)
	end	

	#def update_params
		#params.require(:asset).permit(:requet_return, ret_date: Date)
	#end
end
