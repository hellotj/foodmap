class MarketsController < ApplicationController
	before_action :authenticate_user, only: [:new, :create, :edit, :update, :destroy]
	before_action :set_market, only: [:show, :edit, :update, :destroy]

	def index
		@markets = Market.all
	end

	def show
		@market = Market.find(params[:id])
	end

	def new
		@market = Market.new
	end

	def edit
		@market = Market.find(params[:id])
	end

	def create
		@market = Market.new(params.require(:market).permit(:market_name, :address, :latitude, :longitude))
		if @market.save
			redirect_to markets_path
		else
			render :new
		end
	end

	def update
		@market = Market.find(params[:id])

		if @market.update(params.require(:market).permit(:market_name, :address, :latitude, :longitude))
			redirect_to markets_path
		else
			render :edit
		end
	end

	def destroy
		@market = Market.find(params[:id])
		@market.destroy
		redirect_to markets_path, :notice => "your post has been deleted"
	end


end