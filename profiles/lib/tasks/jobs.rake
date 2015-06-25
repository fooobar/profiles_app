task :job => :environment do

	skill_html = Skill.create({
	name: "HTML5"
	})

skill_css = Skill.create({
	name: "CSS3"
	})

skill_js = Skill.create({
	name: "JavaScript"
	})

skill_git = Skill.create({
	name: "Github"
	})

skill_ajax = Skill.create({
	name: "AJAX"
	})

skill_apis = Skill.create({
	name: "APIs"
	})

skill_slack = Skill.create({
	name: "Slack"
	})


	user_karlyce = User.create({
	f_name: 'Karlyce', 
	l_name: 'Edwards', 
	email: 'totallynotfake@gmail.com',
	password: 'melville1', 
	user_type: 'student'
	})
	400.times do
		u = User.new
		u.org_name = FFaker::Lorem.words(1)
		u.email = FFaker::Internet.email   
		u.password = FFaker::Lorem.word
		u.user_type = "employer"
		u.save
	end
400.times do
	  j = Job.new
	  j.title = FFaker::Lorem.words(3).join(' ')
	  j.desc = FFaker::Lorem.paragraphs(6)
	  j.user_id = rand(100)
	  j.skills.append(Skill.find(rand(1..7)))
	  j.save
end


	end