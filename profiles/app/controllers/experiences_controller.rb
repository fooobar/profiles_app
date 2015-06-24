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
	end


	private
		def experience_params
			params.require(:experience).permit(:company_name,:company_website,:city,:state,:start_date,:end_date,:role,:user_id,:blurb)
		end
	end

end
