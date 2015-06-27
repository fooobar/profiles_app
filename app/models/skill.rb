class Skill < ActiveRecord::Base
	has_and_belongs_to_many :jobs
	has_and_belongs_to_many :users

	before_validation :generate_param

	def generate_param
		self.param = name.parameterize
	end

end
