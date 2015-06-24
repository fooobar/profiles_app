class ProjectsController < ApplicationController

	def new
		@project = Project.new(project_params)
		if @project.save
			render json: @project
		else
			flash[:alert] = "Unable to save project"
		end

	end

	private
		def project_params
			params.require(:project).permit(:title,:desc,:website,:image_src,:user_id)
		end
	end


end
