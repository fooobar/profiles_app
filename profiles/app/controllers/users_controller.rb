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
		@current_user = current_user
	end

	def show
		@user = User.find(params[:id])
		@job = Job.new
		@project = Project.new
		@experience = Experience.new
		if current_user === @user
			if @user.user_type === "student"
				@sorted_experiences = @user.experiences.order(end_date: :desc)
				render :edit_student
				return
			elsif @user.user_type === "employer"
				@sorted_jobs = @user.jobs.order(updated_at: :desc)
				render :edit_employer
				return 
			else 
				@students = User.where(:user_type => "student")
				@employers = User.where(:user_type => "employer")
				@skills = Skill.all
				@projects = Project.all
				render :edit_outcomes
				return
			end
		else
			@user.clicked = (Float(@user.clicked) + 0.5).to_s
			@user.save
			if @user.user_type === "student"
				render :show_student
				return
			else 
				render :show_employer
				return
			end
		end
		@current_user = current_user

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
		@current_user = current_user
	end

	private 
		def user_params
			params.require(:user).permit(:f_name,:l_name,:org_name,:email,:image_src,:phone,:city,:state,:website,:github,:twitter,:linkedin,:behance,:bio, :role, :user_type, :password, :background, :clicked, :color)
		end


end
