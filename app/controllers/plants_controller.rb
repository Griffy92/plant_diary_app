class PlantsController < ApplicationController
	before_action :check_for_login

	def index
		@plants = @current_user.plants.all
	end

	def show
		@plant = @current_user.plants.find params[:id]
	end

	def edit
		@plant = @current_user.plants.find params[:id]
	end

	def update
		plant = @current_user.plants.find params[:id]

		# fetch plant image from perenual api if no input
		if @plant.image.nil? 
			@plant.image = get_image
		end

		plant.update plant_params
		redirect_to plant_path
	end

	def new
		@plant = @current_user.plants.new
		@journal = @plant.journals.build
	end

	def create
		@plant = @current_user.plants.build plant_params

		# fetch plant image from perenual api if no input
		if @plant.image.nil? 
			@plant.image = get_image
		end

		if @plant.save 
			redirect_to @plant
		else
			render :new
		end
	end

	def destroy
		plant = @current_user.plants.find params[:id]
		plant.destroy
		redirect_to plants_path
	end

	private
	def plant_params
		params.require(:plant).permit(:name, :species, :last_watered, :cycle, :journal_ids => [])
	end

	#gets an image from plant API if empty
	def get_image
		# gets image from perenual with the species 
    	plant_info = HTTParty.get("https://perenual.com/api/species-list?key=sk-VeBB6444cc96d5119584&q=#{@plant.species}")
		# link below is image
		
		# this one is fine to run but errors out when the API doesnt have an image
		# plant_image = plant_info["data"][0]["default_image"]["medium_url"]
		plant_image = plant_info.dig "data", 0, "default_image", "medium_url"


	end

end
