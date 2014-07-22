class FoodsController < ApplicationController

	def index
		@foods = Food.all
		@qr = RQRCode::QRCode.new(params[:code]) if params[:code]
	end

	def show
		@food = Food.find(params[:id])
		
	end

	def new
		@food = Food.new
		@qr = RQRCode::QRCode.new(params[:code]) if params[:code]
	end

	def edit
		@food = Food.find(params[:id])
	end

	def create
		@food = Food.new(params.require(:food).permit(:type, :harvested_on, :market, :lat, :longi))
		if @food.save
			redirect_to foods_path
		else
			render :new
		end
	end

	def update
		@food = Food.find(params[:id])

		if @food.update(params.require(:food).permit(:type, :harvested_on))
			redirect_to foods_path
		else
			render :edit
		end
	end

	def destroy
		@food = Food.find(params[:id])
		@food.destroy
		redirect_to foods_path, :notice => "your post has been deleted"
	end

end

