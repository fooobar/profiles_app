class JobsController < ApplicationController
	def update
		# user = Job.find_by({user_id: params[:user_id]})
		job = Job.find(params[:id])
		# update the job
		job.update(job_params)
		if params[:job][:skills] != ""
			skill = Skill.new
			skill.name = params[:job][:skills]
			skills = Skill.all
			exists = false
			job_has_skill = false
			job.skills.each do |job_skill|
				if job_skill.name == skill.name
					job_has_skill = true
				end
			end
			if job_has_skill
				return_hash = {:job => job, :skill => skill}
				render json: return_hash
			else
				skills.each do |existing_skill|
					if existing_skill.name == skill.name
						exists = true
						skill = existing_skill
						job.skills.push(skill)
						return_hash = {:job => job, :skill => skill}
						render json: return_hash
					end
				end
				unless exists
					job.skills.push(skill)
					return_hash = {:job => job, :skill => skill}
					render json: return_hash
				end
			end
		else
			return_hash = {:job => job, :skill => {}}
			render json: return_hash
		end
	end

	def create
		binding.pry
		job = Job.new(job_params)
		job.user_id = params[:user_id]
		user = User.find(params[:user_id])
		job.save
		binding.pry
		if params[:job][:skills] != "" && params[:job][:skills] != nil
			skill = Skill.new
			skill.name = params[:job][:skills]
			skills = Skill.all
			exists = false
			user_has_skill = false
			skills.each do |existing_skill|
				if existing_skill.name == skill.name
					exists = true
					skill = existing_skill
					user.skills.each do |user_skill|
						if user_skill.name == skill.name
							user_has_skill = true
						end
					end
					unless user_has_skill
						user.skills.push(skill)
					end
					job.skills.push(skill)
					return_hash = {:job => job, :skill => skill}
					render json: return_hash
					break
				end
			end
			job.skills.push(skill)
			user.skills.push(skill)
			return_hash = {:job => job, :skill => skill}
			render json: return_hash
		else
			return_hash = {:job => job, :skill => {}}
			render json: return_hash
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