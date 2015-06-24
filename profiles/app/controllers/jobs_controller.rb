class JobsController < ApplicationController
	def index
		@jobs = Job.all
		@skills = Skill.all
	end
end