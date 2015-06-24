# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'ffaker'

User.destroy_all
Skill.destroy_all
Experience.destroy_all
Project.destroy_all


user_jeremy = User.create({
	f_name: 'Jeremy',
	l_name: 'Bell',
	email: 'jeremyianbell@gmail.com', 
	password: 'melville1', user_type: 'student'
	})

user_karlyce = User.create({
	f_name: 'Karlyce', 
	l_name: 'Edwards', 
	email: 'totallynotfake@gmail.com',
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
	email: 'iscuffling@gmail.com',
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

Project.create([
    {
        title: "Wikipedia",
        desc: "A free encyclopedia built collaboratively using wiki software.",
        website: "https://www.wikipedia.org/",
        image_src: "http://publichistorycommons.org/wp-content/uploads/2014/11/wikipedia1.png",
        user_id: user_jeremy.id
    },
    {
        title: "Google",
        desc: "Google is an American multinational technology company specializing in Internet-related services and products.",
        website: "https://www.google.com/",
        image_src: "http://i.forbesimg.com/media/lists/companies/google_416x416.jpg",
        user_id: user_karlyce.id
    },
    {
        title: "Youtube",
        desc: "YouTube is a video-sharing website headquartered in San Bruno, California, United States.",
        website: "https://www.youtube.com/",
        image_src: "http://s.ytimg.com/yts/img/youtube_logo_stacked-vfl225ZTx.png",
        user_id: user_drew.id
    },
    {
        title: "Pornhub",
        desc: "Pornhub, part of the Pornhub NETWORK campaign, is a pornographic video sharing website and the largest pornography site on the Internet."
        website: "http://www.pornhub.com/",
        image_src: "https://upload.wikimedia.org/wikipedia/commons/7/7c/Logo_of_Pornhub.png",
        user_id: user_fernanda.id
    },
    {
        title: "Github",
        desc: "GitHub is a web-based Git repository hosting service, which offers all of the distributed revision control and source code management (SCM) functionality of Git as well as adding its own features.",
        website: "https://github.com/",
        image_src: "https://assets-cdn.github.com/images/modules/logos_page/GitHub-Mark.png",
        user_id: user_gordon.id
    }
])

e1 = User.create(org_name: 'Google', email: 'google@example.com', password: 'melville1', user_type: 'employer')
e2 = User.create(org_name: 'Facebook', email: 'facebook@example.com', password: 'melville1', user_type: 'employer')
e3 = User.create(org_name: 'Twitter', email: 'twitter@example.com', password: 'melville1', user_type: 'employer')

emps = [e1, e2, e3]

20.times do 
    Job.create(title: FFaker::Lorem.words(3).join(' '), desc: FFaker::Lorem.paragraph, user_id: emps.sample.id)
end

Experience.create([
    {
        company_name: "BobCo" ,
        company_website: "http://www.bobco.com/",
        city: "",
        state: "Oregon",
        start_date: "2009/11/4",
        end_date: "2011/12/2",
        role: "Personal Assistant",
        blurb: "Order lunch",
        user_id: user_jeremy.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_jeremy.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_jeremy.id
    },
    {
        company_name: "PhilCo",
        company_website: "http://www.philco-intl.com/",
        city: "Houston" ,
        state: "TX" ,
        start_date: "2000/3/4" ,
        end_date: "2000/6/12",
        role: "air conditioner Salesperson",
        blurb: "Maintain inventory of air conditioners",
        user_id: user_jeremy.id
    },
    {
        company_name: "BobCo" ,
        company_website: "http://www.bobco.com/",
        city: "",
        state: "Oregon",
        start_date: "2009/11/4",
        end_date: "2011/12/2",
        role: "Personal Assistant",
        blurb: "Order lunch",
        user_id: user_karlyce.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_karlyce.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_karlyce.id
    },
    {
        company_name: "PhilCo",
        company_website: "http://www.philco-intl.com/",
        city: "Houston" ,
        state: "TX" ,
        start_date: "2000/3/4" ,
        end_date: "2000/6/12",
        role: "air conditioner Salesperson",
        blurb: "Maintain inventory of air conditioners",
        user_id: user_karlyce.id
    },
    {
        company_name: "BobCo" ,
        company_website: "http://www.bobco.com/",
        city: "",
        state: "Oregon",
        start_date: "2009/11/4",
        end_date: "2011/12/2",
        role: "Personal Assistant",
        blurb: "Order lunch",
        user_id: user_fernanda.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_fernanda.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_fernanda.id
    },
    {
        company_name: "PhilCo",
        company_website: "http://www.philco-intl.com/",
        city: "Houston" ,
        state: "TX" ,
        start_date: "2000/3/4" ,
        end_date: "2000/6/12",
        role: "air conditioner Salesperson",
        blurb: "Maintain inventory of air conditioners",
        user_id: user_fernanda.id
    },
    {
        company_name: "BobCo" ,
        company_website: "http://www.bobco.com/",
        city: "",
        state: "Oregon",
        start_date: "2009/11/4",
        end_date: "2011/12/2",
        role: "Personal Assistant",
        blurb: "Order lunch",
        user_id: user_fernanda.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_drew.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_fernanda.id
    },
    {
        company_name: "PhilCo",
        company_website: "http://www.philco-intl.com/",
        city: "Houston" ,
        state: "TX" ,
        start_date: "2000/3/4" ,
        end_date: "2000/6/12",
        role: "air conditioner Salesperson",
        blurb: "Maintain inventory of air conditioners",
        user_id: user_drew.id
    },
    {
        company_name: "BobCo" ,
        company_website: "http://www.bobco.com/",
        city: "",
        state: "Oregon",
        start_date: "2009/11/4",
        end_date: "2011/12/2",
        role: "Personal Assistant",
        blurb: "Order lunch",
        user_id: user_drew.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_fernanda.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_gordon.id
    },
    {
        company_name: "PhilCo",
        company_website: "http://www.philco-intl.com/",
        city: "Houston" ,
        state: "TX" ,
        start_date: "2000/3/4" ,
        end_date: "2000/6/12",
        role: "air conditioner Salesperson",
        blurb: "Maintain inventory of air conditioners",
        user_id: user_gordon.id
    },
    {
        company_name: "BobCo" ,
        company_website: "http://www.bobco.com/",
        city: "",
        state: "Oregon",
        start_date: "2009/11/4",
        end_date: "2011/12/2",
        role: "Personal Assistant",
        blurb: "Order lunch",
        user_id: user_gordon.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_gordon.id
    },
    {
        company_name: "RonCo",
        company_website: "https://www.ronco.com/",
        city: "Chicago",
        state: "IL",
        start_date: "2002/12/6",
        end_date: "2004/5/9",
        role: "QA Tester",
        blurb: "Sort products to be tested",
        user_id: user_drew.id
    },
    {
        company_name: "PhilCo",
        company_website: "http://www.philco-intl.com/",
        city: "Houston" ,
        state: "TX" ,
        start_date: "2000/3/4" ,
        end_date: "2000/6/12",
        role: "air conditioner Salesperson",
        blurb: "Maintain inventory of air conditioners",
        user_id: user_drew.id
    },
])

skills = Skill.all
@skills_arr = []

skills.each do |skill|
	@skills_arr.push(skill)
end

users = User.all
jobs = Job.all

users.each do |user|
	user.skills << @skills_arr.sample
	user.skills << @skills_arr.sample
	user.skills << @skills_arr.sample
	user.skills << @skills_arr.sample
	user.skills << @skills_arr.sample
	user.skills << @skills_arr.sample
	user.skills << @skills_arr.sample
	user.skills << @skills_arr.sample
end

jobs.each do |job|
	job.skills << @skills_arr.sample
	job.skills << @skills_arr.sample
	job.skills << @skills_arr.sample
	job.skills << @skills_arr.sample
	job.skills << @skills_arr.sample
end

