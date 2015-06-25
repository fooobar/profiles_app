// Event Handlers

$(document).ready(function() {
	// show page
	$('.job-desc-preview a').on("click", moreJobDesc)
	$('.job-desc-all a').on("click", lessJobDesc)
	// edit page
	$('.profile-job-edit-button').on("click", editJob)
	$('.job-update-button').on("click", updateJob)
})


// Show Employer Profile - more /less description
var moreJobDesc = function(event){
	event.preventDefault()
	console.log(event.siblingElement)
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).next('.job-desc-all').removeClass("hidden");
}

var lessJobDesc = function(event){
	event.preventDefault()
	console.log(event.siblingElement)
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).prev('.job-desc-preview').removeClass("hidden");
}


var editJob = function(e) {
	e.preventDefault()
	$(this).siblings('.profile-job-edit').show();
	$(this).siblings('.job-info').hide();
}

var updateJob = function(event){
	console.log("update");
	event.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		$(this).siblings('.profile-job-edit').hide();
		$(this).siblings('.job-info').show();
		// $('#profile-image').attr('src', resp['image_src'])
		// update the text to reflect the changes
	})	
}	