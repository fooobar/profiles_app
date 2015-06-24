task :job => :environment do
	400.times do
		u = User.new
		u.f_name = FFaker::Name.first_name 
		u.l_name = FFaker::Name.last_name
		u.email = FFaker::Internet.email   
		u.password = FFaker::Lorem.word
		u.user_type = "employer"
		u.save
	end
400.times do
	  j = Job.new
	  j.title = FFaker::Lorem.words(3).join(' ')
	  j.desc = FFaker::Lorem.paragraph
	  j.user_id = rand(100)
	  3.times do
	  	j.skills.append(Skill.find(rand(9..16)))
	  end	  
	  j.save
end
	end