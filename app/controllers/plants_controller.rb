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
		plant.update plant_params
		redirect_to plant_path
	end

	def new
		@plant = @current_user.plants.new
		@journal = @plant.journals.build
	end

	def create
		@plant = @current_user.plants.build plant_params

		if @plant.save 
			redirect_to @plant
		else
			render :new
		end
	end

	private
	def plant_params
		params.require(:plant).permit(:name, :species, :last_watered, :cycle, :journal_ids => [])
	end

	#gets an image from plant API if empty
	def get_image
		pecies = params[:species]
		
		# gets image from perenual
    	@plant_info = HTTParty.get("https://perenual.com/api/species-list?key=sk-VeBB6444cc96d5119584&q=#{species}")
		# link below is image
		@plant_info["data"][0]["default_image"]["medium_url"]
	end
end
