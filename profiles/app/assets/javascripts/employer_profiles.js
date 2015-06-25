// Event Handlers

$(document).ready(function() {
	// show page
	$('.job-desc-preview a').on("click", moreJobDesc)
	$('.job-desc-all a').on("click", lessJobDesc)
	// edit page - jobs
	$('.profile-job-edit-button').on("click", editJob)
	$('.job-update-button').on("click", updateJob)
	// edit page - name and bio company
	$('#profile-header-edit-button').on("click", updateName)
})

// Show Employer Profile - more description
var moreJobDesc = function(event){
	event.preventDefault()
	console.log(event.siblingElement)
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).next('.job-desc-all').removeClass("hidden");
}

// Show Employer Profile - less description
var lessJobDesc = function(event){
	event.preventDefault()
	console.log(event.siblingElement)
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).prev('.job-desc-preview').removeClass("hidden");
}

// Edit Job button shows form
var editJob = function(e) {
	e.preventDefault()
	$(this).siblings('.profile-job-edit').show();
	$(this).siblings('.job-info').hide();
}

// Update Job hides form shows updated text
var updateJob = function(event){
	event.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		$(this).parent().parent().parent().find($('.job-info')).find($('h3')).text(resp["title"])
		$(this).parent().parent().parent().find($('.job-info')).find($('p')).text(resp["desc"])
		// hide form show text
		$(this).parent().parent().hide();
		$(this).parent().parent().siblings('.job-info').show();		
	
	})	
}	