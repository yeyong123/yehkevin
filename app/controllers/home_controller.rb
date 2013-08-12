class HomeController < ApplicationController
	def index
		@products = Product.all
		@cart = current_cart
	end
def contact
end
end
