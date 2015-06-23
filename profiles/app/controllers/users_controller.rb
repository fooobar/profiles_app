class UsersController < ApplicationController
	before_action :authorize, except: [:create, :new]
	
	def new_student
		@user = User.new
	end

	def new_employer
		@user = User.new
	end

	def create
		@user = User.new(user_params)
			if @user.save
				redirect_to @user
			else
				render :action => "new"
			end
	end

	def show
		binding.pry
		@user= User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
			if @user.update(user_params)
				redirect_to @user
			else
				render :action => "edit"
			end
	end

	def index
		@users = User.all
	end

	private 
		def user_params
			params.require(:user).permit(:f_name,:l_name,:org_name,:email,:image_src,:phone,:city,:state,:website,:github,:twitter,:linkedin,:behance,:bio)
		end


end
