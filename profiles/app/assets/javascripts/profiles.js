
// Event Handlers

$(document).ready(function() {
	UserId = $('.profile-side-nav').attr('data')
	$('.edit-button').on("click", renderForm)
	$('.image-edit-button').on("click", renderImageForm)
	$('.image-update-button').on("click", updateImage)
})


// Rendering Forms

var renderForm = function(e) {
	e.preventDefault()
	$(this).parent().children().hide()
	$(this).parent().children('.hidden').show()
}

var renderImageForm = function(e) {
	e.preventDefault()
	$(this).hide()
	$(this).parent().children('.hidden').show()
}

// Update Image

var updateImage = function() {
	$.ajax({
		url: '/users/'+UserId,
		type: 'patch',
		data: {
			'user[image_src]': $('#user_image_src').val()
		}
	}).done(function(resp) {
		$(this).show()
		$(this).parent().children('.hidden').hide()	
		$('#profile-image').attr('src', resp['image_src'])
	})	
}



// Show Employer Profile
var showMoreJobDesc = function(){
	e.preventDefault()


}




