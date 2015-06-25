class JobsController < ApplicationController


	def edit

	end

	def update
		binding.pry
		@user = User.find(params[:user_id])
		@job = Job.find(params[:id])
		# update the job
	end

end

