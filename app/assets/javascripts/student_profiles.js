

// Event Handlers

$(document).ready(function() {
	UserId = $('.profile-side-nav').attr('data')
	$(document).on("click", '.edit-button', renderEditForm)
	$(document).on("click", '.add-button', renderAddForm)
	$(document).on("click", '.skill-add-button', renderSkillAddForm)
	$(document).on("click", '.skill-update-button', addStudentSkills)
	$(document).on("click", '.image-edit-button', renderImageForm)
	$(document).on("click", '.image-update-button', updateImage)
	$(document).on("click", '.contact-update-button', updateContact)
	$(document).on("click", '.student-header-update-button', updateStudentHeader)
	$(document).on("click", '.project-update-button', updateProject)
	$(document).on("click", '.project-create-button', addProject)
	$(document).on("click", '.experience-update-button', updateExperience)
	$(document).on("click", '.experience-create-button', addExperience)
})


// Rendering Forms

var renderEditForm = function(e) {
	e.preventDefault()
	$(this).parent().children().hide()
	$(this).parent().children('.edit-form').show()
}

var renderAddForm = function(e) {
	e.preventDefault()
	$(this).parent().children().hide()
	$(this).parent().children('.add-form').show()
}

var renderImageForm = function(e) {
	e.preventDefault()
	$(this).hide()
	$(this).parent().children('.edit-form').show()
}
var renderSkillAddForm = function(e) {
	e.preventDefault()
	$(this).hide()
	$(this).parent().children('.add-form').show()
}




// Update Image

var updateImage = function(e) {
	e.preventDefault()
	$.ajax({
		context: this,
		url: '/users/'+UserId,
		type: 'patch',
		data: {
			'user[image_src]': $('#user_image_src').val()
		}
	}).done(function(resp) {
		// update image
		$('.profile-image').attr('src', resp['image_src'])
		// hide/show form/edit
		$('.image-edit-button').show()
		$('#profile-image-edit').hide()	
		
	})	
}

// Update Contact Info

var updateContact = function(e) {
	e.preventDefault()
	$.ajax({
		context: this,
		url: '/users/'+UserId,
		type: 'patch',
		data: {
			'user[website]': $('#user_website').val(),
			'user[twitter]': $('#user_twitter').val(),
			'user[github]': $('#user_github').val(),
			'user[linkedin]': $('#user_linkedin').val(),
			'user[behance]': $('#user_behance').val()
		}
	}).done(function(resp) {
		location.reload()
	})
}

// Update Header

var updateStudentHeader = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: '/users/'+UserId,
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		$(this).parents('.profile-header').find('h1').text(resp["user"]["f_name"]+" "+resp["user"]["l_name"] )
		$(this).parents('.profile-header').find('h2').text(resp["user"]["role"])
		$(this).parents('.profile-header').find('h3').text(resp["user"]["bio"])
		// hide/show form/edit
		$(this).parents('.profile-header').children().show();
		$(this).parents('.profile-header').find('.edit-form').hide();		
	})
}

// Update Project 

var updateProject = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: '/users/'+UserId+'/projects/'+$(this).parents('.project').attr('data'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		$(this).parents('.project').find('img').attr('src', resp["image_src"])
		$(this).parents('.project').find('h3').text(resp["title"])
		$(this).parents('.project').find('p').text(resp["desc"])
		$(this).parents('.project').find('a').attr('href', resp["website"])
		// hide/show form/edit
		$(this).parents('.project').children().show();
		$(this).parents('.project').find('.edit-form').hide();		
	})
}


// Add Project

var addProject = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: '/users/'+UserId+'/projects',
		type: 'post',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		
		// mustache here
		var template = $('#new-project-template').html();
		var output = Mustache.render(template, resp)
		$('.new-project').prepend(output);

		// hide/show form/edit
		$(this).parents('.add-project').children().show();
		$(this).parents('.add-project').find('.add-form').hide();		
	})
}


// Delete Project

	// curretnly just using default form action rather than Ajax



// Update Experience

var updateExperience = function(e) {
	e.preventDefault();
	$.ajax({
		context: this,
		url: '/users/'+UserId+'/experiences/'+$(this).parents('.experience').attr('data'),
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
		$(this).parents('.experience').children().show();
		$(this).parents('.experience').find('.edit-form').hide();		
	})
}


// Add Experience

var addExperience = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: '/users/'+UserId+'/experiences',
		type: 'post',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		
		// mustache here
		var template = $('#new-experience-template').html();
		var output = Mustache.render(template, resp)
		$('.new-experience').prepend(output);

		// hide/show form/edit
		$(this).parents('.add-experience').children().show();
		$(this).parents('.add-experience').find('.add-form').hide();		
	})
}




// Delete Experience

	// curretnly just using default form action rather than Ajax


// Add Skill

var addStudentSkills = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: '/users/'+UserId,
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		
		$(this).parents('.profile-skills').find('ul').append('<li>'+resp['skill']['name']+'</li>')

		// hide/show form/edit
		$(this).parents('.profile-skills').children().show();
		$(this).parents('.profile-skills').find('.add-form').hide();		
	})
}