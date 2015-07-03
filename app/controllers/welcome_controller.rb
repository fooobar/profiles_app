class WelcomeController < ApplicationController

	def user_login? 
		!current_user.nil?
	end

	def index
		@current_user = current_user
	end

end
