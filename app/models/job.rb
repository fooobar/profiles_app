class Job < ActiveRecord::Base
	has_and_belongs_to_many :skills
	belongs_to :users
	scope :skills, -> {where(skills)}

end
