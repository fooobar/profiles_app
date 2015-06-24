class UsersController < ApplicationController
	before_action :authorize, except: [:create, :new, :new_employer, :new_student]
	
	def new_student
		@user = User.new
	end

	def new_employer
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.user_type = (params[:user_type])
			if @user.save
				redirect_to @user
			else
				render :new_student
			end
	end

	def show
		@user = User.find(params[:id])
		(@user === current_user) ? ((@user.user_type === 'student') ? render :edit_student : render :edit_employer) : ((@user.user_type === 'student') ? render :show_student : render :show_employer)
	end

	# def edit
	# 	@user = User.find(params[:id])
	# 	render :edit_student
	# end

	def update
		user = User.find(params[:id])
		user.update(user_params)
		render json: user
	end

	def index
		@users = User.all
	end

	private 
		def user_params
			params.require(:user).permit(:f_name,:l_name,:org_name,:email,:image_src,:phone,:city,:state,:website,:github,:twitter,:linkedin,:behance,:bio, :user_type, :password)
		end


end
