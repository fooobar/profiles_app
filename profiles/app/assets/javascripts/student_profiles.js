
// Event Handlers

$(document).ready(function() {
	UserId = $('.profile-side-nav').attr('data')
	$('.edit-button').on("click", renderForm)
	$('.skills-edit-button').on("click", renderSkillsForm)
	$('.image-edit-button').on("click", renderImageForm)
	$('.image-update-button').on("click", updateImage)
	$('.contact-update-button').on("click", updateContact)
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
		$('.image-edit-button').show()
		$('#profile-image-edit').hide()	
		$('.profile-image').attr('src', resp['image_src'])
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



