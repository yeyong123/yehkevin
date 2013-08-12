class HomeController < ApplicationController
before_filter :authenticate_user!
	def index
		@products = Product.all
		@cart = current_cart
	end
end
