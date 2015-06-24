// Current User ID



// Event Handlers

$(document).ready(function() {
	UserId = $('.profile-side-nav').attr('data')
	$('#image-edit-button').on("click", renderImageEdit)
	$('#image-update-button').on("click", updateImage)
})


// Updating Profile Image

var renderImageEdit = function(e) {
	e.preventDefault()
	$('#image-edit-button').hide()
	$('#profile-image-edit').show()
}

var updateImage = function(e) {
	e.preventDefault()
	$.ajax({
		url: '/users/'+UserId,
		type: 'patch',
		data: {
			image_src: $('#user_image_src').val()
		}
	}).done(function(resp) {
		$('#profile-image-edit').hide()
		$('#image-edit-button').show()	
		console.log(resp)

	})
	
}

