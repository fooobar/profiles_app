
// Event Handlers

$(document).ready(function() {
	UserId = $('.profile-side-nav').attr('data')
	$('.edit-button').on("click", renderForm)
	$('.skills-edit-button').on("click", renderSkillsForm)
	$('.image-edit-button').on("click", renderImageForm)
	$('.image-update-button').on("click", updateImage)
	$('.contact-update-button').on("click", updateContact)
	$('.project-update-button').on("click", updateProject)
	$('.experience-update-button').on("click", updateExperience)
})


// Rendering Forms

var renderForm = function(e) {
	e.preventDefault()
	$(this).parent().children().hide()
	$(this).parent().children('.edit-form').show()
}

var renderImageForm = function(e) {
	e.preventDefault()
	$(this).hide()
	$(this).parent().children('.edit-form').show()
}

var renderSkillsForm = function(e) {
	e.preventDefault()
	$(this).hide()
	$(this).parent().children('.edit-form').show()
	$(this).parent().find('.delete-button').show()
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

var updateName = function(e){
	e.preventDefault();
	$.ajax({
		context: this,
		url: '/users/'+UserId,
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		$(this).parents('.profile-header').find('h1').text(resp["f_name"]+" "+resp["l_name"] )
		$(this).parents('.profile-header').find('h2').text(resp["role"])
		$(this).parents('.profile-header').find('h3').text(resp["bio"])
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



// Delete Project



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
		$(this).parents('.experience').find('h5').text(resp["start_date"]+" &mdash; "+resp["end_date"]+" | "+resp["city"]+", "+resp["state"])
		$(this).parents('.experience').find('p').text(resp["blurb"])
		// hide/show form/edit
		$(this).parents('.experience').children().show();
		$(this).parents('.experience').find('.edit-form').hide();		
	})
}



// Add Experience




// Delete Experience




// Add Skill




// Delete Skill
















