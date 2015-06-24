class WelcomeController < ApplicationController

	def user_login? 
		!current_user.nil?
	end

	def index
	end

end
