class AssetsController < ApplicationController

	before_action :authenticate_account!, only:[:new,:create] 

	def index
		@assets = Asset.where(account_id: current_account.id).order("created_at DESC").paginate(page: params[:page], per_page: 10)
		
	end			
	def create
		@assets = current_account.assets.create(asset_params)
		if @assets.valid?
			flash[:success] = "Your asset has been created"
			redirect_to assets_path(:controller => :BalanceController, :asset_id => :@assets , :crypto_name => :null , :crypto_amount => :null  ,:aud_amount => :null , :payout_date => :null ) 
			
		else
			flash[:alert] = "Invalid input"	
			render :index,status: :unprocessable_entity
		end		
	end	

	def edit
		@asset = Asset.find(params[:id])
	end	

	def update
		@asset = Asset.find(params[:id])
		if @asset.update(asset_params)
			redirect_to assets_path
		else
			redirect_to edit_asset_path	
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
