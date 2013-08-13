class CategoriesController < ApplicationController
  def index
  end

  def show
		begin
		@category = Category.find(params[:id])
		@tag = Tag.find(params[:id])
		if @products.nil?
			flash[:notice] = "这个真没有"
			redirect_to home_path
		else
			render 'show'
		end
	end
	end
end
