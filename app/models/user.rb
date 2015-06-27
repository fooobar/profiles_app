class User < ActiveRecord::Base
	has_many :jobs
	has_many :projects
	has_many :experiences
	has_and_belongs_to_many :skills
	has_secure_password


	def self.get_employer_skills
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

	def self.get_user_skills(user_id)
		user = User.find(user_id)
		skills = []
		user.skills.each do |skill|
				skills.push(skill.id)
		end
		skills
	end

	def self.send_match_email(employer_skills,user_skills, student_id)
		match = {}
		employer_skills.each do |key, value|
			#run user skills in order to get the full array of skills
			(value & user_skills).each do |i| 
				if match[key] == nil
					 match[key] = [i]
				else
					match[key].push(i)
				end
			end
		end
		match.each do |key, value|
			skill_array = [] 
			value.each do |value|
				skill_name = Skill.find(value)
				skill_array.push(skill_name.name)
			end
			skill_string = skill_array * ", "
			User.send_email(student_id , key, skill_string)
		end
	end

	def self.send_email(student_id, employer_id, skills)
		api_user = ENV["SENDGRID_USERNAME"]
		api_key = ENV["SENDGRID_PASSWORD"]
		student = User.find(student_id)
		employer = User.find(employer_id)
		client = SendGrid::Client.new(api_user: api_user, api_key: api_key)
		mail = SendGrid::Mail.new do |m|
  		m.to = 'splashofwater@yahoo.com'
  		m.from = "updates@example.com"
  		m.subject = "A new alumni has skills you are tracking"
  		m.html = "Hello #{employer.org_name}, #{student.f_name} #{student.l_name} just updated their profile with these skills that you are tracking: #{skills}. View their profile here"
		end
		client.send(mail)
	end
end