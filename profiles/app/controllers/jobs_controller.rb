class JobsController < ApplicationController
	def update
		# user = Job.find_by({user_id: params[:user_id]})
		job = Job.find(params[:id])
		# update the job
		job.update(job_params)

		skill = Skill.new
		skill.name = params[:skills]
		skills = Skill.all
		job = Job.find(params[:id])
		exists = false
		job_has_skill = false
		Job.skills.each do |job_skill|
			if job_skill.name == skill.name
				job_has_skill = true
			end
		end
		if job_has_skill
			render json: job
		else
			skills.each do |existing_skill|
				if existing_skill.name == skill.name
					exists = true
				end
			end
			unless exists
				skill.save #THIS MIGHT NEED TO BE FIXED IF THE JOB IS ONLY GETTING THE CACHED SKILL NOT THE SAVED ONE
				job.skills.push(skill)
				render json: job
			end
			render json: job
		end
	end

	def create
		job = Job.new(job_params)
		job.user_id = params[:user_id]
		if job.save
			render json: job
		else
			"Error message"
		end

	end

	def destroy
		Job.destroy(params[:id])
		render json: {message: 'success'}
	end

	def index
		@jobs = Job.all
		@skills = Skill.all
	end

	def show
		@job = Job.find(params[:id])
	end

	private
	
	def job_params
		params.require(:job).permit(:title, :desc)
	end


end