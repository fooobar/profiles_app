class ProjectsController < ApplicationController

	def new
		@project = Project.new(project_params)
		if @project.save
			render json: @project
		else
			flash[:alert] = "Unable to save project"
		end
	end

	def update
		project = Project.find(params[:id])
		project.update(project_params)
		if current_user.user_type == "student"
				redirect_to "/users/#{params[:user_id]}"
		else
				render json: project
				return
		end
	end

	def create
		project = Project.new(project_params)
		project.user_id = params[:user_id]
		if project.save
			render json: project
		else
			"Error message"
		end
	end

	def destroy
		Project.destroy(params[:id])
		redirect_to :back
	end


	private
		def project_params
			params.require(:project).permit(:title,:desc,:website,:image_src,:user_id)
		end
	
end



