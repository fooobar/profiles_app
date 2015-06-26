class SkillsController < ApplicationController

	def create
		skill = Skill.new(skill_params)
		skills = Skill.all
		user = User.find(params[:user_id])
		exists = false
		user_has_skill = false
		skills.each do |existing_skill|
			if exiting_skill.name == skill.name
				exists = true
			end
		end
		if exists
			render json: skill
		else
			skill.save
			User.skills.each do |user_skill|
				if user_skill.name == skill.name
					user_has_skill = true
				end
			end
			unless user_has_skill
				user.skills.push(skill)
			end
			render json: skill
		end
	end


	def index
		@users = User.where(:user_type => 'student')
		@skills = Skill.all
		@current_user = current_user
	end

	def update
		skill = Skill.find(params[:id])
		if current_user.user_type == "student"
			skill.student_clicks += 1
			skill.save
		elsif current_user.user_type == "employer"
			skill.employer_clicks += 1
			skill.save
		end
		response = {:message => 'good job'}
		render json: response
	end


	private
		def skill_params
			params.require(:skill).permit(:name, :clicked)
		end


end