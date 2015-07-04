class UsersController < ApplicationController
	before_action :authorize, except: [:create, :new, :new_employer, :new_student]
	
	def index
		@users = User.all
		@current_user = current_user
	end

	def new_student
		@user = User.new
		@current_user = current_user
	end

	def new_employer
		@user = User.new
		@current_user = current_user
	end

	def create
		@user = User.new(user_params)
		@user.user_type = (params[:user_type])
		if @user.user_type === "student" && @user.save
			redirect_to @user
		else
			render :new_student
		end
		if @user.user_type === "employer" && @user.save
			redirect_to @user
		else
			render :new_employer
		end
		@current_user = current_user
	end


	def show
		@user = User.find(params[:id])
		@job = Job.new
		@project = Project.new
		@experience = Experience.new
		if current_user === @user
				@sorted_experiences = @user.experiences.order(end_date: :desc)
				@sorted_jobs = @user.jobs.order(updated_at: :desc)
				@sorted_projects = @user.projects.order(updated_at: :desc)
				@students = User.where(:user_type => "student")
				@employers = User.where(:user_type => "employer")
				@skillsStudents = Skill.all.order(student_clicks: :desc)
				@skillsEmployers = Skill.all.order(student_clicks: :desc)
				render :profile
				# return
		else
			@user.clicked = (Float(@user.clicked) + 1).to_s
			@user.save
			render :show
			# return
		end
		@current_user = current_user
	end


	def update
		user = User.find(params[:id])
		user.update(user_params)
		if params[:user][:skills] != "" && params[:user][:skills] != nil
			skill = Skill.new
			skill.name = params[:user][:skills]
			skills = Skill.all 
			skills.each do |existing_skill|
				if skill.name == existing_skill.name
					skill = existing_skill
				end
			end
			user.skills.each do |user_skill|
				if user_skill.name == skill.name
					return_hash = {:user => user, :skill => skill}
					render json: return_hash
					return
				end
			end
			user.skills.push(skill)
			employers = User.get_employer_skills()
			user_skills = User.get_user_skills(params[:id])
			# User.send_match_email(employers,user_skills,params[:id])
			return_hash = {:user => user, :skill => skill}
			render json: return_hash
			return
		end
		render json: user		
		@current_user = current_user
	end


	private 
		def user_params
			params.require(:user).permit(:f_name,:l_name,:org_name,:email,:image_src,:phone,:city,:state,:website,:github,:twitter,:linkedin,:behance,:bio, :role, :user_type, :password, :background, :clicked, :color)
		end


end
