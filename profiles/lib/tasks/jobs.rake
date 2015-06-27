task :job => :environment do

	Job.create({
  title: "JavaScript Architect -NYC", 
  desc: "Overview:\n
				Innovative strategies. Proactive thinking. Comprehensive know-how. That's what we expect from a Senior Software Engineer at TMP. Here, you'll be part of a fiercely collaborative technology team charged with creating digital solutions that are transforming the way employers and job seekers connect. That means contributing to high-traffic websites for a broad range of high-profile companies. Developing next-generation applications and products for some of the most recognized brands in the world. And actively supporting our diverse suite of best-in-class technologies. All this in an environment that constantly challenges you to push beyond boundaries and enhance your expertise—with the support of a global team of industry experts. Sound like a fit for your talent and passion? Read on.\n
				Key Responsibilities:\n

* Work with the product team to implement product features and roll out new functionality\n
* Research and recommend the implementation of new technology or technical tools to improve system performance, stability, development process.\n
* Make recommendations as appropriate to ensure maximum stability and minimum downtime.\n
* Conduct and/or participate in formal and informal, internal and external technology presentations and reviews.\n
* Oversee and develop next generation web applications and products.\n
* Participate in all phases of the software engineering life cycle\n
* Provide technical troubleshooting and de-bug support.\n
* Develop and implement new products and provide information and support when required.\n
* Evaluate new design proposals, investigate and recommend solutions and process improvements that deliver greater efficiency or performance benefits.\n
* Ensure that necessary technical documentation is maintained in an appropriate manner\n

To learn more about TMP Technology and what we are working on- check out these links: \n

https://www.jobsattmp.com/tmp-tech \n

Stack Overflow page: http://careers.stackoverflow.com/company/tmp-worldwide?searchTerm=tmp%20worldwide Skills/Requirements\n
6+ years of development on web technologies.\n
Mastery of javascript and javascript MVC frameworks such as Angular.js\n
Mastery of HTML 5, CSS3, SSAS\n
In depth knowledge of Angular Directives\n
Experience writing SPA applications\n
Experience writing frontend unit tests with frameworks such as Jasmine and Mocha\n
Experience with modern front end tools such as NPM, Grunt, Bower, and Gulp\n
Experience using Git, and the Continuous Integration concept\n
Familiarity with source control, build processes, and continuous delivery\n
Experience guiding, coaching, and developing with other engineers\n
Must possess a solid business sense to analyze IT viability and strategic vision\n
A wide breadth of technical expertise preferred\n

TMP Worldwide is committed to providing a safe workplace for all employees. It is the policy of TMP Worldwide to conduct a background check for all candidates who accept an offer of employment with us.\n

TMP Worldwide is an Equal Opportunity and Affirmative Action Employer, M/F/D/V.",
  user_id: "6"})

user_jeremy = User.create({
	f_name: 'Jeremy',
	l_name: 'Bell',
	email: 'jeremyianbell@gmail.com', 
	password: 'melville1', 
    user_type: 'student',
    background: 'chrome-extension://laookkfknpbbblfpciffpaejjkokdgca/backgrounds/99443a0a-22c6-46bc-8e37-b5ccacbd1496.jpg'
	})


Job.create({
  title: "JavaScript Architect -NYC", 
  desc: "Overview:\n
				Innovative strategies. Proactive thinking. Comprehensive know-how. That's what we expect from a Senior Software Engineer at TMP. Here, you'll be part of a fiercely collaborative technology team charged with creating digital solutions that are transforming the way employers and job seekers connect. That means contributing to high-traffic websites for a broad range of high-profile companies. Developing next-generation applications and products for some of the most recognized brands in the world. And actively supporting our diverse suite of best-in-class technologies. All this in an environment that constantly challenges you to push beyond boundaries and enhance your expertise—with the support of a global team of industry experts. Sound like a fit for your talent and passion? Read on.\n
				Key Responsibilities:\n

* Work with the product team to implement product features and roll out new functionality\n
* Research and recommend the implementation of new technology or technical tools to improve system performance, stability, development process.\n
* Make recommendations as appropriate to ensure maximum stability and minimum downtime.\n
* Conduct and/or participate in formal and informal, internal and external technology presentations and reviews.\n
* Oversee and develop next generation web applications and products.\n
* Participate in all phases of the software engineering life cycle\n
* Provide technical troubleshooting and de-bug support.\n
* Develop and implement new products and provide information and support when required.\n
* Evaluate new design proposals, investigate and recommend solutions and process improvements that deliver greater efficiency or performance benefits.\n
* Ensure that necessary technical documentation is maintained in an appropriate manner\n

To learn more about TMP Technology and what we are working on- check out these links: \n

https://www.jobsattmp.com/tmp-tech \n

Stack Overflow page: http://careers.stackoverflow.com/company/tmp-worldwide?searchTerm=tmp%20worldwide Skills/Requirements\n
6+ years of development on web technologies.\n
Mastery of javascript and javascript MVC frameworks such as Angular.js\n
Mastery of HTML 5, CSS3, SSAS\n
In depth knowledge of Angular Directives\n
Experience writing SPA applications\n
Experience writing frontend unit tests with frameworks such as Jasmine and Mocha\n
Experience with modern front end tools such as NPM, Grunt, Bower, and Gulp\n
Experience using Git, and the Continuous Integration concept\n
Familiarity with source control, build processes, and continuous delivery\n
Experience guiding, coaching, and developing with other engineers\n
Must possess a solid business sense to analyze IT viability and strategic vision\n
A wide breadth of technical expertise preferred\n

TMP Worldwide is committed to providing a safe workplace for all employees. It is the policy of TMP Worldwide to conduct a background check for all candidates who accept an offer of employment with us.\n

TMP Worldwide is an Equal Opportunity and Affirmative Action Employer, M/F/D/V.",
  user_id: "6"})

	end