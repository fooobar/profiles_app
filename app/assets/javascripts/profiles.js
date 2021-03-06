if ($('body.users.show').length){

// Current User ID



// Event Handlers

$(document).ready(function() {
	UserId = $('.profile-side-nav').attr('data')
	$('#profile-image-edit-button').on("click", renderImageEdit)
	$('#image-update-button').on("click", updateImage)
})


// Updating Profile Image

var renderImageEdit = function(e) {
	e.preventDefault()
	$('#profile-image-edit-button').hide()
	$('#profile-image-edit').show()
}

var updateImage = function(e) {
	e.preventDefault()
	$.ajax({
		url: '/users/'+UserId,
		type: 'patch',
		data: {
			'user[image_src]': $('#user_image_src').val()
		}
	}).done(function(resp) {
		$('#profile-image-edit').hide()
		$('#profile-image-edit-button').show()	
		$('#profile-image').attr('src', resp['image_src'])
	})	
}

// Updating Profile Contact



}