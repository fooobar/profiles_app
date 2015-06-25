class User < ActiveRecord::Base
	has_many :jobs
	has_many :projects
	has_many :experiences
	has_and_belongs_to_many :skills

	has_secure_password

	def self.getEmployers
		employers = {}
		User.where("user_type = 'employer'").each do |user|
			skills = []
			user.skills.each do |skill|
				skills.push(skill.id)
			end
			employers[user.id] =  skills
		end
		employers
	end
end