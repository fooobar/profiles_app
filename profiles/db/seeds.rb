# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Skill.destroy_all


user_jeremy = User.create({
	f_name: 'Jeremy',
	l_name: 'Bell',
	email: 'jeremyianbell@gmail.com', 
	password: 'melville1', user_type: 'student'
	})

user_karlyce = User.create({
	f_name: 'Karlyce', 
	l_name: 'Edwards', 
	email: 'karlyce.edwards@gmail.com',
	password: 'melville1', 
	user_type: 'student'
	})


user_gordon = User.create({
	f_name: 'Gordon', 
	l_name: 'DuGan', 
	email: 'gordon.dugan2@gmail.com', 
	password: 'melville1', 
	user_type: 'student'
	})


user_fernanda = User.create({
	f_name: 'Fernanda',
	l_name: 'Correa',
	email: 'nandasc@gmail.com',
	password: 'melville1',
	user_type: 'student'
})

user_drew = User.create({
	f_name: 'Drew',
	l_name: 'Garver',
	email: 'a.w.garver@gmail.com',
	password: 'melville1',
	user_type: 'student'
	})

skill_html = Skill.create({
	name: "HTML5"
	})

skill_css = Skill.create({
	name: "CSS3"
	})

skill_js = Skill.create({
	name: "JavaScript"
	})

skill_rubyonrails = Skill.create({
	name: "Ruby on Rails"
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


