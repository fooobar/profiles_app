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


	def destroy
		user = User.find(params[:user_id])
		skill = Skill.find(params[:id])
		skill_index = 0
		user.skills.each_with_index do |user_skill, i|
			if user_skill.name == skill.name
				skill_index = i
			end
		end
		user.skills.delete(user.skills[skill_index])
		response = {:message => 'success'}
		redirect_to "/users/#{user.id}"
	end

	def destroy2
		employer = User.find(params[:user_id])
		skill = Skill.find(params[:id])
		job = Job.find(params[:job_id])		
		job_skill_index = 0
		employer_delete_skill = true
		employer_skill_index = 0
		employer.jobs.each do |job|
			job.skills.each do |job_skill|
				if job_skill.name = skill.name
					employer_delete_skill = false
				end
			end
		end
		if employer_delete_skill
			employer.skills.each_with_index do |employer_skill, i|
				if employer_skill.name == skill.name
					employer_skill_index = i
				end
			end
			employer.skills.delete(employer.skills[employer_skill_index])
		end
		job.skills.each_with_index do |job_skill, i|
			if job_skill.name == skill.name
				job_skill_index = i 
			end
		end
		job.skills.delete(job.skills[job_skill_index])
		response = {:message => 'success'}
		render json: response
	end


	private
		def skill_params
			params.require(:skill).permit(:name, :clicked)
		end


end