class User < ActiveRecord::Base
	has_many :skills, :jobs, :projects, :work_experience
end