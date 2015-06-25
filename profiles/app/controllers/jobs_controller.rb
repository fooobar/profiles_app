class JobsController < ApplicationController
	def index
		@jobs = Job.all
		@skills = Skill.all
	end

	def show
		@job = Job.find(params[:id])
	end
end
