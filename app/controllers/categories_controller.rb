class CategoriesController < ApplicationController
  def index
  end

  def show
		@category = Category.find(params[:id])

	end

	def tag
		@lists = List.where("tag_id=?", params[:t])
	end
	
end
