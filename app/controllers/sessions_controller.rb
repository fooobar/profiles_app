class SessionsController < ApplicationController


	def create 

		user = User.find_by({email: params[:user][:email]})

		if user && user.authenticate(params[:password])
			session[:id] = user.id
			if user.user_type == 'student'
				redirect_to "/jobs"
			elsif user.user_type == 'employer'
				redirect_to "/skills"
			else
				redirect_to "/users/#{user.id}"
			end
		else
			redirect_to '/login'
		end
	end

  def destroy
    session[:id] = nil
    redirect_to '/'
  end


end


