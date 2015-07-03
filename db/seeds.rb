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
	password: 'melville1', 
    user_type: 'student',
    background: 'chrome-extension://laookkfknpbbblfpciffpaejjkokdgca/backgrounds/99443a0a-22c6-46bc-8e37-b5ccacbd1496.jpg'
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
	user_type: 'student',
    bio: 'Hi, I am a web developer living in NYC.',
    background: 'http://www.psdgraphics.com/file/colorful-triangles-background.jpg',
    image_src: 'https://scontent-iad3-1.xx.fbcdn.net/hphotos-xfa1/v/t1.0-9/p720x720/12904_10205382361451922_2465365376983298725_n.jpg?oh=80561a1a3e52ca762346e3ec72abbe57&oe=561FC6B2'
})

user_drew = User.create({
	f_name: 'Drew',
	l_name: 'Garver',
	email: 'iscuffling@gmail.com',
	password: 'melville1',
	user_type: 'student'
	})

user_kyle = User.create({
    f_name: 'Kyle', 
    l_name: 'Coach', 
    email: 'kyle@outcomes.com',
    password: 'melville1', 
    user_type: 'outcomes'
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
	name: "Angular JS"
	})
s2 = Skill.create({
    name: "JQuery"
    })
s3 = Skill.create({
    name: "Handlebars"
    })

s4 = Skill.create({
    name: "Jasmine"
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
        title: "Facebook",
        desc: "Facebook, is a social-media experience allowing you to keep up with all of the meaningless events in lives of people you don't like.",
        website: "http://www.facebook.com/",
        image_src: "https://www.facebook.com/images/fb_icon_325x325.png",
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

e1 = User.create(org_name: 'Google', email: 'google@example.com', password: 'melville1', user_type: 'employer',  color: '#FF5050')
e2 = User.create(org_name: 'Facebook', email: 'facebook@example.com', password: 'melville1', user_type: 'employer')
e3 = User.create(org_name: 'Twitter', email: 'twitter@example.com', password: 'melville1', user_type: 'employer')

emps = [e1, e2, e3]

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
	user.skills = @skills_arr.sample(4).uniq
end

jobs.each do |job|
    job.skills = @skills_arr.sample(4).uniq
end

e4 = User.create(org_name: 'TMP Worldwide', email: 'info@tmp.com', password: 'melville1', user_type: 'employer', image_src: "http://i.stack.imgur.com/6VXq5.png", website: "http://tmp.com/" )
e5 = User.create(org_name: 'Clever Canary ', email: 'info@clevercanary.com', password: 'melville1', user_type: 'employer', image_src:"http://i.stack.imgur.com/wenVs.jpg",website: "http://clevercanary.com/" )
e6 = User.create(org_name: 'Sling TV', email: 'info@echostar.com', password: 'melville1', user_type: 'employer', image_src:"http://i.stack.imgur.com/JVdAn.jpg", website: "http://www.echostar.com/")
e7 = User.create(org_name: 'Newsday Media Group', email: 'info@newsday.com', password: 'melville1', user_type: 'employer', image_src:"http://cablevision.sc.findly.com/~/media/Sites/Cablevision/images/image-og.jpg",website: "http://jobs.cablevision.com/" )
e8 = User.create(org_name: 'eventPower', email: 'info@eventpower.com', password: 'melville1', user_type: 'employer', image_src: "http://www.imtconferences.com/wp-content/uploads/2013/10/eventPower_logo-165x33.jpg",website: "http://www.eventpower.com/" )
e9 = User.create(org_name: 'ecreations', email: 'info@ecreations.com', password: 'melville1', user_type: 'employer', image_src:"https://www.ecreations.net/gfx/eCreations250x250.png" ,website: "https://www.ecreations.net/" )
e10 = User.create(org_name: 'Confluence Corporation', email: 'info@confluencecorporation.com', password: 'melville1', user_type: 'employer', image_src: "http://i.stack.imgur.com/4QNsh.jpg", website: "http://www.confluencecorp.com/")
e11 = User.create(org_name: 'Topaz Labs', email: 'info@topazlabs.com', password: 'melville1', user_type: 'employer', image_src: "http://i.stack.imgur.com/n8TlC.png",website: "http://www.topazlabs.com/")
e12 = User.create(org_name: 'BitGo', email: 'info@bitgo.com', password: 'melville1', user_type: 'employer', image_src:"http://i.stack.imgur.com/Ge7tv.png",website: "http://www.bitgo.com/" )

Job.create({
  title: "JavaScript Architect - NYC", 
  desc: " Innovative strategies. Proactive thinking. Comprehensive know-how. That's what we expect from a Senior Software Engineer at TMP.' Here, you'll be part of a fiercely collaborative technology team charged with creating digital solutions that are transforming the way employers and job seekers connect. That means contributing to high-traffic websites for a broad range of high-profile companies. Developing next-generation applications and products for some of the most recognized brands in the world. And actively supporting our diverse suite of best-in-class technologies. All this in an environment that constantly challenges you to push beyond boundaries and enhance your expertise—with the support of a global team of industry experts. Sound like a fit for your talent and passion? Read on.\n

Key Responsibilities\n
Work with the product team to implement product features and roll out new functionality Research and recommend the implementation of new technology or technical tools to improve system performance, stability, development process. Make recommendations as appropriate to ensure maximum stability and minimum downtime. Conduct and/or participate in formal and informal, internal and external technology presentations and reviews. Oversee and develop next generation web applications and products. Participate in all phases of the software engineering life cycle Provide technical troubleshooting and de-bug support. Develop and implement new products and provide information and support when required. Evaluate new design proposals, investigate and recommend solutions and process improvements that deliver greater efficiency or performance benefits. Ensure that necessary technical documentation is maintained in an appropriate manner\n 

 To learn more about TMP Technology and what we are working on- check out these links:
 \n https://www.jobsattmp.com/tmp-tech \n
 Stack Overflow page: http://careers.stackoverflow.com/company/tmp-worldwide?searchTerm=tmp%20worldwide\n

 Skills/Requirements
 \n 6+ years of development on web technologies.Mastery of javascript and javascript MVC frameworks such as Angular.js Mastery of HTML 5, CSS3, SSAS In depth knowledge of Angular Directives - Experience writing SPA applications Experience writing frontend unit tests with frameworks such as Jasmine and Mocha Experience with modern front end tools such as NPM, Grunt, Bower, and Gulp Experience using Git, and the Continuous Integration concept Familiarity with source control, build processes, and continuous delivery Experience guiding, coaching, and developing with other engineers Must possess a solid business sense to analyze IT viability and strategic vision A wide breadth of technical expertise preferred\n

 TMP Worldwide is committed to providing a safe workplace for all employees. It is the policy of TMP Worldwide to conduct a background check for all candidates who accept an offer of employment with us.\nTMP Worldwide is an Equal Opportunity and Affirmative Action Employer, M/F/D/V.",
user_id: e4.id
})


Job.create({
  title: "AngularJS Developer for SaaS Startups", 
  desc: "Nerds seeking nerd! \n 
Clever Canary is looking for an important next hire for our close knit team. \n This is a full time or consulting position developing AngularJS-based single page applications across a variety of complex business domains. \n We are looking for an experienced front end engineer comfortable with modern libraries, build tools, workflow, front end design patterns and responsive design. \n 

 In this position you will work simultaneously with multiple, early stage startups across health care, legal, corporate strategy and insurance domains. Be a part of the product as well as the development team to create technical solutions to important business problems. Work along side seasoned developers passionate about the craft and open to ideas about how to improve our deliverables. Work with a great design team to develop beautiful yet functional applications that make the workplace more efficient. Learn about how startups work and the strategy and techniques that help them transition from idea to growth stage and maturity. Skills & Requirements \n Minimum two years full-time experience programming JavaScript applications JavaScript Strong JavaScript (closures, asynchronous programming techniques, inheritance patterns, event propagation) AngularJS Demonstrable experience with AngularJS including UI router, custom directives, scope inheritance, controllers, services, factories and testing with Protractor, Mocha, Chai BS degree CS, engineering, math or science \n 

Also Interested In PhoneGap, Ionic, Cordova Node.js 

About Clever Canary \n 
Clever Canary is a growing product and software development studio working with select early stage enterprise startups and small businesses. \n We help entrepreneurs with deep domain experience modernize their industries by building web-based communication and collaboration tools. \n We work with our clients to refine and validate their products by going live with “feature complete” (rather than “feature rich”) seed applications instrumented with analytics that guide product growth.We have funded clients who are in solid growth phases. We are also developing a steady stream of new client referrals from previous and current clients.",
        user_id: e5.id
        })

Job.create({
  title: "JavaScript Developer - Sling TV", 
  desc: "Television is at an inflection point. New technologies and businesses are rapidly evolving and reshaping how we watch TV. We are Sling TV, an OTT (over-the-top) TV service that delivers live U.S. and international programming, as well as video on demand, over the Internet. We are seeking a Software Engineer  to join our American Fork, Utah - based team. This is an exciting position in a fast moving project that requires the ability of candidates to hit the ground running. What we’re building is revolutionary and every employee participates in a profit sharing program. Come be a part of changing the face of TV!\n

Sling TV delivers content from Disney/ESPN, HBO, AMC, Turner, Scripps, EPIX, Univision and Maker Studios, and is available on Amazon Fire TV, Amazon Fire TV Stick, current-generation Roku players, Roku TV models, Xbox One, Android, iOS, Macs, PCs.\n JavaScript and HTML 5 engineer to support Xbox and HTML5 clients.  This is AP work and backend analytics.This is a unique opportunity to develop video ecosystem software in JavaScript around the built-in video support in HTML5. We have influence in the web standards and are heavily involved in emerging video delivery systems. The position involves developing web-based client-side software to interface with our high-scale video back-end systems. This position is focused on creating JavaScript libraries to support a web UI built on our video ecosystem framework.\n
Responsibilities\n
Follows coding standards, unit tests and integration tests 
Communicates constantly with other server and operations teams 
Takes ownership of the project and innovates on library API design and standards\n Skills & Requirements\nBasic Requirements:\n 
BS in Computer Science or related field 
8 years skilled client-side engineer using object-oriented JavaScript\n Preferred Qualifications: 
Familiar with various JS libraries such as jQuery, AngularJS, Prototype Versed in good software engineering principles and object and API design 
Great communication skills Self-directed and motivated team player\nAbout Sling TV\nSling TV is an OTT (over-the-top) TV service that delivers live U.S. and international programming, as well as video on demand, over the Internet. Viewers can watch live TV for just $20/month. Sling TV features the best of live TV, including ESPN, HBO, AMC, TNT, TBS, HGTB, The Food Network, Disney, and more. Starting at $5/month, viewers can add on Extras like Kids and News & Info programming. Sling TV is a next generation service with a breakthrough model that meets the entertainment needs of today’s viewers. Take Back TV with Sling.\n

About Echostar:\n

EchoStar delivers innovative products and services that power global communication, commerce and entertainment. Through our market-leading Digital Broadcast Centers across North America, we operate one the world’s largest and most advanced digital broadcast networks, serving over 17 million end users every day. Our historical pioneering development of market solutions such as satellite spot-beam technology, end-to-end MPEG4 video delivery, placeshifting, whole home DVR sharing and VSAT data network management have consistently set new standards in the industry.\n
 
EchoStar provides a variety of benefits for all employees.  In addition to health and wellness benefits that support a new era in healthcare management, we provide unique benefits including Tuition Reimbursement, Employee Stock Purchase, Discounted rates on HughesNet and Dish Network services, Slingbox discounts and much more.\n
    For a complete list of benefits and specific company detail please visit http://www.echostar.com\n EchoStar is an EEO employer (M/F/D/V)",
        user_id: e6.id
        })
Job.create({
  title: "Lead Designer Front End Web Developer", 
  desc: "Are you driven by what's next? Become a Cablevisionary. We are looking for Cablevisionaries who always keep the customer first in mind, who insist on continuing to learn every day, who thrive in a highly collaborative work environment and who when presented with a challenge, don't quit until they find a solution.\n The Lead Designer/Front End Web Developer will be responsible for producing HTML and CSS code based on provided site and product designs while adhering to the latest coding best practices. 

 Write, modify and maintain CSS and HTML for Newsday Interactive products, working closely with both the interactive design staff and development staff. A basic understanding of JS and JQUERY are also required. The front end developer may also be asked to create prototypes and wireframes. Design graphics, site navigation, and layout of content for new products and sections. Demonstrate outstanding technical and computer graphics skills. Ensure exceptional quality by working with interactive, news and marketing staffs to meet highest standards for web design, user experience and speed. Stays abreast of new trends and techniques for continual improvement of web products and processes.\n


Skills & Requirements\n 
 Bachelor’s degree in Creative Design, Graphic Design or similar. 
 4 years web development experience. 
 Demonstrated excellence in large scale CSS and HTML projects. 
 Experience with MAC and PC computers. * Demonstrated success meeting multiple deadlines. 
 Proven ability to work with customers, both internal and external. * Excellent organizational and time management skills. 
 Ability to stay current with new technology, i.e. design/illustration programs and coding best practices, as it relates to web design and production. 
 Excellent communication and interpersonal skills.\n
Newsday Media Group is an Equal Opportunity Employer and maintains a drug-free and smoke-free workplace.\n


About Newsday Media Group\n
 Newsday Media Group encompasses a full spectrum of integrated media products and services. We engage our audience with relevant, useful and diverse content built upon a foundation of journalistic excellence. We offer advertisers a wide range of marketing solutions and opportunities to efficiently reach their target market in order to grow their business. Newsday Media Group’s portfolio of print products include Newsday, amNewYork and Star Community Publishing Group along with interactive products that include Newsday.com, amNY.com, exploreLI.com and Newsday Connect.\n

Newsday Media Group’s mission and vision is to engage consumers and businesses by connecting them to the communities in which they live, work and play…powered by a high-performance organization. Newsday's 19 Pulitzer prizes and countless other awards for outstanding journalism reinforce the organization's prominent position as a media leader on Long Island and throughout the New York area.\n

To learn more about our organization and products, please visit us online at:[http://www.newsday.com/mediakit]: http://www.newsday.com/mediakit",
        user_id: e7.id
        })

Job.create({
  title: "Ruby on Rails Software Developer", 
  desc: "eventPower is looking for a Ruby on Rails developer to join our team designing and implementing high-quality, leading-edge tools to enhance internal business processes and provide technology-based conference solutions. The ideal candidate will be responsible for the full development cycle from requirements analysis through design, development, testing, and user training for improving existing tools as well as implementing new business-focused capabilities. The candidate will also be focused on providing our users a continually improved and sleek suite of tools.\nAs part of a small development team, it’s imperative that the candidate have a solid understanding of Ruby on Rails along with strong development and testing capabilities.\nResponsibilities/Duties:\n * Implement tools and systems primarily in the Ruby on Rails framework.* Upgrade, improve, and maintain existing internally developed tools. * Implement new strategies, processes, frameworks, and development/test/production methodologies and environments aligned with company goals. * Maintain source code control systems. * Focus on providing superior tools and capabilities to clients and internal staff. * Help custom-developed tools to take them to the next level with an emphasis on user-friendly interface design. * Continually focus on intuitive UI and clean code. * Ensure and test compatibility across browser platforms. * Lead the company’s foray into providing information on mobile devices. * Realize that the best tools and platforms are only “best” based on user experience. * Quickly resolve bugs, errors or issues. * Work closely with internal users and clients to provide the best tools and systems with a goal of far surpassing our competition. * Document, track, and monitor problems to ensure timely resolution. * Train staff on new technologies and systems.\nSkills & Requirements\nPosition Requirements:\n * 3-5 years software development/design experience * Substantial Ruby on Rails experience * Extensive user interface design expertise for web and mobile apps including CSS, jQuery, Responsive Design * Database design and development experience * Experience with requirements analysis including customer interaction * BS or BA in science/technology field preferred  * Strong project management skills * Excellent teamwork and communications skills required * Ability to work productively supporting a diverse team * Ability to link IT processes and systems to changing business requirements * Ability to self-schedule and work independently * Ability to recommend solutions that maximize value while minimizing cost * Flexible, adaptive attitude * Comfortable in a flat organization, with matrix reporting; able to thrive in an unstructured environment * Must be willing to travel for meetings and event support\nAbout eventPower \n eventPower is a rapidly growing event management company producing technology-focused conferences and providing tools and services to other meeting planning organizations. Our clients expect us to be on the leading-edge of tools, techniques, and practices to make every event a success. Employees of eventPower are geographically dispersed throughout the US. [http://www.eventPower.com]: http://www.eventPower.com",
        user_id: e8.id
        })

Job.create({
  title: "Software Engineer / Web Applications Developer", 
  desc: "We have an immediate opening for an experienced, in-house Software Engineer / Web Applications Developer to join our established and growing company and have a hand in developing killer web applications.\n Since 1997, we have maintained responsible growth and don’t believe in turnover. If you’re looking for a career and not just a job, we want to hear from you.\nSkills & Requirements\n

Required Technical Skills\n
Extensive experience with large single-page applications, i.e. Namespaced CSS
“Widgetized”, encapsulated JavaScript classes/methods/properties and best practices
Maintaining state-on screen change, i.e.
Avoiding applying redundant event listeners 
Using the same “widget” to display different data based on request
Designing widgets to be reusable for other products by passing in product configuration
Templating using Handlebars 
Extensive experience with jQuery
Deferreds/Promises 
AJAX requests 
 Custom event handling
 Extensive experience with work on a large project over a long timeline with multiple developers in a version-controlled environment/adapting existing code\n

 The perfect candidate must  Pass our knowledge tests, be able to self-direct and handle multiple, competing priorities simultaneously.Be able to meet deadlines and complete projects in an efficient way Have the ability to collaborate as a strong member within a team environment. Have excellent communication, planning, organizational and time-management skills. Possess strong analytical and problem solving skills. Be at least 21 years old",
        user_id: e9.id
        })

Job.create({
  title: "Front End Developer", 
  desc: "This job is perfect for someone who likes great variety, working on lots of different things. Some projects are small, some are complex and challenging. You will work in a small, team of talented people and your role is clear -- you work in between the designers (creating designs in cool tools like UX Pin and Sketch) and the developers (implementing open source websites and software systems in Drupal, WordPress, Joomla and/or other systems).\n

 Skills & Requirements\n
Converting web designs to responsive, WordPress themes
 Excellent facility with complex and quality CSS, including troubleshooting design issues with CSS, website layouts, making responsive cross-browser compatibility and responsive design\n

 Minimum Requirements:\n
 A minimum of three years of experience in creating open source themes / templates in WordPress and/or Drupal and/or Joomla from designs created by our design team
Great facility with Javascript, HTML5/ CSS3, jQuery, AJAX
Demonstrated experience creating responsive themes
Experience troubleshooting browser compatibilities
Comfort with PHP although deep PHP programming expertise not required/n About Confluence Corporation\nConfluence is a small technology company dedicated to supporting nonprofit organizations - across the country, with special concentrations in DC and LA. We are located in a co-working space[(www.wework.com)]:www.wework.com near the Dupont metro. We have such fascinating projects and clients doing wonderful things. Please come learn more!",
        user_id: e10.id
        })
Job.create({
  title: "Web App Developer (Javascript, jQuery, HTML,CSS, Client-side)", 
  desc: "As a Web App Developer at Topaz Labs, you'll have the opportunity to collaborate with top notch software developers and image processing experts to create cloud-centric desktop and mobile photo applications. As an early member of our next generation product team you will be able to exercise your creativity and skill to the fullest and directly shape products for millions of people. You will be instrumental in the foundation of amazing products with a great user experience. In a small but fast growing company, you will have the special opportunity to grow with the company.\n

 What We Offer:\n 
  A place to work, learn and have fun among some of the best software developers, computer scientists, and photography artists  Flat organizational structure that ensures your ultimate freedom of creativity on the products we build  Informal and creative company culture, with frequent celebratory lunches and group activities.  Competitive salary, year-end bonus, comprehensive benefits (medical, dental, vision, matching 401K)\n

Our Ideal Candidates:\n  Solid programming skills in whatever programming language and a track record of getting stuff done.  2+ years of hardcore client-side web application, or desktop/mobile GUI application development  Experience in major GUI / Client-side web development stack, a strong plus if it is in javascript, jQuery, html/css, Bootstrap, AWS javascript SDK.  Strong UX design, UI, and product sense  A CS degree or an equivalent background in software engineering  Strong plus: exposure to C++, Qt/Qml, photography enthusiast, UX design, PHP / SQL server side development\n

 About Topaz Labs\n Topaz Labs is a leading provider of advanced photography software for professional photographers. We're looking for passionate, creative developers to expand our development team for our new products on desktop and mobile.",
        user_id: e4.id
        })

Job.create({
  title: "UI/UX Designer (Design Ninja)2", 
  desc: "At BitGo, our mission is to secure the world’s bitcoin. Our platform is used by some of the largest institutions and enterprises in the bitcoin space today, and our brand is known as the gold standard for security. We have raised $14 million in venture capital financing from some of the top investors in Silicon Valley, New York, who have backed successful companies like PayPal, Netscape, Red Hat, Proofpoint, Verisign, Juniper Networks, Yammer and Tesla.\n 

Our founders:
\nMike Belshe is a veteran technologist who invented the multi-signature protocols used at Bitgo. Prior, Mike worked at Google on the founding of Google Chrome, was the co-inventor and driving force behind SPDY (which has now become HTTP/2.0 and co-founded Lookout Software acquired by Microsoft.\n 
Ben Davenport is a technology entrepreneur and investor who had been deeply involved in Bitcoin since 2011.  He co-founded Beluga which was sold to Facebook.  Prior, Ben worked at Google and Microsoft.\n 

Why Join Bitgo:\n Building disruptive products takes vision, innovation, passion, technical chops, drive to deliver, collaboration and execution. In a nutshell great people, who strive for excellence in all their endeavors who have a track record of success!  We are looking for candidates who “think out of the box”, are not risk adverse and want to build products that change the world. We aspire to provide a working environment, culture and leadership team that inspires greatness on a daily basis offering transparency, ownership and integrity.\n Join a team and learn about state-of-the-art front end security, operational security, backend security for RESTful APIs, and more.  We build layers of security protection with isolated privileges combined with state-of-the-art monitoring and intrusion detection.\nBitcoin will change the financial industry!  Join our team in building one of the next technologies that will change the world!\n 

What you'll own and deliver: \n 
As the head of UX design at BitGo, you will lead the ideation, vision, and hiring in a fast-paced environment to bring forth the world's best bitcoin products.\n Lead the effort to make bitcoin easy-to-use for everyone.\n Create a culture of design innovation and successful design execution\n Skills & Requirements\n  Academic design education or equivalent experience. Refined capability for both visual and functional abstraction.  Ability to reduce dense information and and complex functionality to its essence and express it in an intuitive, explorable, discoverable interface.  Experience delivering high quality, intentionally designed products to large public or corporate user bases.  Experience doing so with financial apps that make managing financial data a pleasure rather than a chore is especially valuable.  Excellent communication skills. Ability to reduce complex concepts to their essence and clearly explain them, both verbally and in writing.  Effectiveness in a fast-paced startup environment in a nascent high-risk/high-return industry. 

We are working hard to ensure not only our own success, but Bitcoin's as well.  Knowledge, experience, or interest in Bitcoin, cryptocurrency, fintech, and/or related areas.\n 

About BitGo, Inc\n Bitgo, a start-up in Palo Alto, CA is multi-signature wallet focused on security.  We're adhering to the benefits of the blockchain and operate as a 100% blockchain wallet.  We are building an open, transparent on-blockchain solutions and innovating how to make Bitcoin better.",
        user_id: e12.id
        })

Job.create({
  title: "Web App Developer (Javascript, jQuery, HTML,CSS, Client-side)", 
  desc: "As a Web App Developer at Topaz Labs, you'll have the opportunity to collaborate with top notch software developers and image processing experts to create cloud-centric desktop and mobile photo applications. As an early member of our next generation product team you will be able to exercise your creativity and skill to the fullest and directly shape products for millions of people. You will be instrumental in the foundation of amazing products with a great user experience. In a small but fast growing company, you will have the special opportunity to grow with the company.\n

 What We Offer:\n 
  A place to work, learn and have fun among some of the best software developers, computer scientists, and photography artists  Flat organizational structure that ensures your ultimate freedom of creativity on the products we build  Informal and creative company culture, with frequent celebratory lunches and group activities.  Competitive salary, year-end bonus, comprehensive benefits (medical, dental, vision, matching 401K)\n

Our Ideal Candidates:\n  Solid programming skills in whatever programming language and a track record of getting stuff done.  2+ years of hardcore client-side web application, or desktop/mobile GUI application development  Experience in major GUI / Client-side web development stack, a strong plus if it is in javascript, jQuery, html/css, Bootstrap, AWS javascript SDK.  Strong UX design, UI, and product sense  A CS degree or an equivalent background in software engineering  Strong plus: exposure to C++, Qt/Qml, photography enthusiast, UX design, PHP / SQL server side development\n

 About Topaz Labs\n Topaz Labs is a leading provider of advanced photography software for professional photographers. We're looking for passionate, creative developers to expand our development team for our new products on desktop and mobile.",
        user_id: e11.id
        })

Job.create({
  title: "Web App Developer (Javascript, jQuery, HTML,CSS, Client-side)", 
  desc: "As a Web App Developer at Topaz Labs, you'll have the opportunity to collaborate with top notch software developers and image processing experts to create cloud-centric desktop and mobile photo applications. As an early member of our next generation product team you will be able to exercise your creativity and skill to the fullest and directly shape products for millions of people. You will be instrumental in the foundation of amazing products with a great user experience. In a small but fast growing company, you will have the special opportunity to grow with the company.\n

 What We Offer:\n 
  A place to work, learn and have fun among some of the best software developers, computer scientists, and photography artists  Flat organizational structure that ensures your ultimate freedom of creativity on the products we build  Informal and creative company culture, with frequent celebratory lunches and group activities.  Competitive salary, year-end bonus, comprehensive benefits (medical, dental, vision, matching 401K)\n

Our Ideal Candidates:\n  Solid programming skills in whatever programming language and a track record of getting stuff done.  2+ years of hardcore client-side web application, or desktop/mobile GUI application development  Experience in major GUI / Client-side web development stack, a strong plus if it is in javascript, jQuery, html/css, Bootstrap, AWS javascript SDK.  Strong UX design, UI, and product sense  A CS degree or an equivalent background in software engineering  Strong plus: exposure to C++, Qt/Qml, photography enthusiast, UX design, PHP / SQL server side development\n

 About Topaz Labs\n Topaz Labs is a leading provider of advanced photography software for professional photographers. We're looking for passionate, creative developers to expand our development team for our new products on desktop and mobile.",
        user_id: e4.id
        })
