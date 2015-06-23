class User < ActiveRecord::Base
	has_many :jobs, :projects, :work_experience
	has_and_belongs_to_many :skills

	has_secure_password
end