class PlacesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	def index
		@places = Place.all
	end

	def new
		@places = Place.new
	end


#The place_params part is what pulls the values of name, description and address from the place form. Then the Place.create is what actually sends the item to the database.
	def create
		current_user.places.create(place_params)
		redirect_to root_path
	end
	
	private
	
	def place_params
		params.require(:place).permit(:name, :description, :address)
	end

end
