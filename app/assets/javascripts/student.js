$(document).ready(function() {
	$('.user-projects').on("click", '.update-button', updateProject)
	$('.user-projects').on("click", '.create-button', addProject)
	$('.user-experiences').on("click", '.update-button', updateExperience)
	$('.user-experiences').on("click", '.create-button', addExperience)
	$('.add-skill-button').on("click", addStudentSkill)

})

// Update Project 

var updateProject = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		$(this).parents('.project').find('img').attr('src', resp["image_src"])
		$(this).parents('.project').find('h3').text(resp["title"])
		$(this).parents('.project').find('p').text(resp["desc"])
		$(this).parents('.project').find('a').attr('href', resp["website"])
		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();			
	})
}


// Add Project

var addProject = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'post',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// mustache here
		var template = $('#new-project-template').html();
		var output = Mustache.render(template, resp)
		$('.new-project').prepend(output);
		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();	
	})
}



// Update Experience
var updateExperience = function(e) {
	e.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		$(this).parents('.experience').find('a').attr('href', resp["website"])
		$(this).parents('.experience').find('h3').text(resp["role"])
		$(this).parents('.experience').find('h4').text(resp["company_name"])
		$(this).parents('.experience').find('h5').html(resp["start_date"]+" &mdash; "+resp["end_date"]+" | "+resp["city"]+", "+resp["state"])
		$(this).parents('.experience').find('p').text(resp["blurb"])
		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();			
	})
}


// Add Experience
var addExperience = function(e){
	e.preventDefault();
	console.log("clicked add experience")
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'post',
		data: $(this).parent().serialize()
	}).done(function(resp) {		
		// mustache here
		var template = $('#new-experience-template').html();
		var output = Mustache.render(template, resp)
		$('.new-experience').prepend(output);

		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();	
	})
}




// Add Skill

var addStudentSkill = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		
		$(this).parents('.user-skills').find('ul').append('<li>'+resp['skill']['name']+'</li>')

		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();		
	})
}

