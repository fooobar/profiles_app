
$(document).ready(function() {
	$(document).on("click", '.update-image', updateImage)
	$(document).on("click", '.update-contact', updateContact)
	$('.user-preferences').on("click", '.update-prefs', updatePrefs)
})


// Update Image

var updateImage = function(e) {
	e.preventDefault()
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: {
			'user[image_src]': $('#user_image_src').val()
		}
	}).done(function(resp) {
		// update image
		$('.profile-image').attr('src', resp['image_src'])
		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();		
	})	
}



// Update Contact Information

var updateContact = function(e) {
	e.preventDefault()
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		location.reload()
		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();		
	})	
}


// Update user preferences
var updatePrefs = function(event){
	event.preventDefault()
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		console.log($('.preview-bkg').attr('src', resp['background']))
		// updating sidenav with json resp
		$('.preview-bkg').attr('src', resp['background'])
		$('.preview-color').css('background-color', resp['color'])

		// updating main div with background and color
		$(this).parents().find($('.profile-content')).css('background-image', 'url(' + resp["background"] + ')')
		$(this).parents().find($('.profile-content')).css('background-color', resp["color"])		
		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();		
	})
}



	// sidenav contact update test - didn't work
		// update contact with json
		// $('.phone').text(resp['phone'])
		// $('.website').attr("href", resp['website'])
		// $('.website').show()
		// $('.twitter').attr("href", resp['twitter'])
		// $('.github').attr("href", resp['github'])
		// $('.linkedin').attr("href", resp['linkedin'])
		// $('.behance').attr("href", resp['behance'])


		