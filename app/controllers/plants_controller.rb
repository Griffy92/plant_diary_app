class PlantsController < ApplicationController
	before_action :check_for_login

	def index
		@plants = @current_user.plants.all
	end

	def show
		@plant = @current_user.plants.find params[:id]
	end

	def edit
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
		params.require(:plant).permit(:name, :species, :last_watered, :cycle, :journals_attributes => :name)
	end
end
