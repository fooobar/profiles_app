// Current User ID



// Event Handlers

$(document).ready(function() {
	UserId = $('.profile-side-nav').attr('data')
	$('#profile-image-edit-button').on("click", renderImageEdit)
	$('#profile-image-update-button').on("click", updateImage)
	$('.job-desc-more').on("click", showMoreJobDesc)
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
			image_src: $('#user_image_src').val()
		}
	}).done(function(resp) {
		$('#profile-image-edit').hide()
		$('#profile-image-edit-button').show()	
		console.log(resp)

	})	
}

// Updating Profile Contact


// Show Employer Profile
var showMoreJobDesc = function(){
	e.preventDefault()


}


