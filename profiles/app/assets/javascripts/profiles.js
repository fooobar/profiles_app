// Current User ID



// Event Handlers

$(document).ready(function() {
	UserId = $('.profile-side-nav').attr('data')
	$('#profile-image-edit-button').on("click", renderImageEdit)
	$('#image-update-button').on("click", updateImage)
	$('.job-desc-more').on("click", showMoreJobDesc)

})


// Updating Profile Image

var renderImageEdit = function(e) {
	e.preventDefault()
	$('#profile-image-edit-button').hide()
	$('#profile-image-edit').show()
}


// Updating Profile Contact


// Show Employer Profile
var showMoreJobDesc = function(){
	e.preventDefault()


}


