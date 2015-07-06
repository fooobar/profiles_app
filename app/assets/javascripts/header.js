$(document).ready(function() {
	$('.user-header').on("click", '.update-the-header', updateTheHeader)
})

var updateTheHeader = function(e){
	e.preventDefault()
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update header dom with json response
		$('.student-name').text(resp['f_name'] + " " + resp['l_name'])
		$('.org-name').text(resp['org_name'])
		$('.bio').text(resp['bio'])
		$('.role').text(resp['role'])
		$('.location').text(resp['city'] + " , " + resp['state'])
		// hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();		
	})	
}


