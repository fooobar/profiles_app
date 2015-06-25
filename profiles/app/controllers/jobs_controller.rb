class JobsController < ApplicationController

	def update
		# user = Job.find_by({user_id: params[:user_id]})
		job = Job.find(params[:id])
		# update the job
		job.update(job_params)
		render json: job
	end

	private
	
	def job_params
		params.require(:job).permit(:title, :desc)
	end


end

