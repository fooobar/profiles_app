class ExperiencesController < ApplicationController
	def new
		@experience = Experience.new(experience_params)
		if @experience.save
			render json: @experience
		else
			flash[:alert] = "Unable to save experience"
		end
	end

	def update
		experience = Experience.find(params[:id])
		experience.update(experience_params)
		render json: experience
	end

	def create
		experience = Experience.new(experience_params)
		experience.user_id = params[:user_id]
		if experience.save
			render json: experience
		else
			"Error message"
		end
	end

	def destroy
		Experience.destroy(params[:id])
		"experience destroyed"
	end

	private
		def experience_params
			params.require(:experience).permit(:company_name,:company_website,:city,:state,:start_date,:end_date,:role,:user_id,:blurb)
		end
	end

end