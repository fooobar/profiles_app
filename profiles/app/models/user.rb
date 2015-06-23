class User < ActiveRecord::Base
	has_many :jobs
	has_many :projects
	has_many :experiences
	has_and_belongs_to_many :skills

	has_secure_password
end