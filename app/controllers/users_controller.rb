class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new user_params
		if @user.save 
			session[:user_id] = @user.id
			redirect_to journals_path
		else
			render :home
		end
	end

	private

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation, :nickname)
	end

end
