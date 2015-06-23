class SessionsController < ApplicationController

	def new
	end


	def create 

		user = User.find_by({email: params[:user][:email]})

		if user && user.authenticate(params[:password])
			session[:id] = user.id
			redirect_to "/users/#{user.id}"
		else
			redirect_to '/login'
		end
	end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end


end


