class SkillsController < ApplicationController

	def new
		@skill = Skill.new(skill_params)
		if @skill.save
			render json: @skill
		else
			flash[:alert] = "Unable to save skill"
		end
	end

	private
		def skill_params
			params.require(:skill).permit(:name)
		end
	end
end
