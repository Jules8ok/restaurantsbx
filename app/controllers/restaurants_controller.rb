class RestaurantsController < ApplicationController
	before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
	before_action :all_restaurant, only: [:index, :categories, :address, :rating, :price]
	def index
	end
	def categories
	end
	def address
	end
	def rating
	end
	def price
	end
	def show
	end
	def new
		@restaurant = Restaurant.new
	end
	def create
		restaurant = Restaurant.create(restaurant_params)
        redirect_to restaurant_path(restaurant)
	end
	def edit
	end
	def update
		@restaurant.update(restaurant_params)
	    redirect_to restaurants_path
	end
	def destroy
		@restaurant.destroy
		redirect_to restaurants_path
	end
	private 
	def restaurant_params 
		params.require(:restaurant).permit(:name,:address,:description,:rating, :categories, :photo, :photo_cache, :price)
	end
	def set_restaurant
		@restaurant = Restaurant.find(params[:id])
	end
	def all_restaurant
		@restaurants = Restaurant.all
	end
end
