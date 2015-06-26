class WelcomeController < ApplicationController

	def user_login? 
		!current_user.nil?
	end

	def index
		@user = User.find(params[:id])
	end

end
