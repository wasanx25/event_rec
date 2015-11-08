class ItemsController < ApplicationController
	def new
		@item = Item.new
	end

	def create
		Item.create(create_params)
		redirect_to root_path
	end

	def destroy
		Item.delete(params[:id])
		redirect_to root_path
	end

	private
	def create_params
		params.require(:item).permit(:name, :description)
	end
end
