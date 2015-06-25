// Event Handlers

$(document).ready(function() {
	console.log('loaded')
	// show page
	$('.job-desc-preview a').on("click", moreJobDesc)
	$('.job-desc-all a').on("click", lessJobDesc)
	// edit page - jobs
	$('.profile-job-edit-button').on("click", showUpdateJob)
	$('.job-update-button').on("click", updateJob)
	// edit header - name and bio company
	$('.profile-header-edit-button').on("click", editHeader)
	$('.header-update-button').on("click", updateName)

	// add job
	$('.add-job-button').on("click", showAddJob)
	$('.add-job-form-button').on("click", addJob)
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

// Update Job

// Edit Job button shows form
var showUpdateJob = function(e) {
	e.preventDefault()
	$(this).siblings('.profile-job-edit').show();
	$(this).siblings('.job-info').hide();
}

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


// updating header

var editHeader = function(event){
	event.preventDefault()
	$(this).parent().hide();
	$(this).parent().siblings('#profile-header-edit').show();
}


var updateName = function(event){
	event.preventDefault();
	
	$.ajax({
		context: this,
		url: '/users/'+UserId,
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		$(this).parent().parent().parent().find($('.profile-info')).find($('h1')).text(resp["org_name"])
		$(this).parent().parent().parent().find($('.profile-info')).find($('h2')).text(resp["bio"])
		// hide form show text
		$(this).parent().parent().parent().find($('.profile-info')).show();
		$(this).parent().parent().parent().find($('#profile-header-edit')).hide();		
	})
}


// Create a Job
var showAddJob = function(event) {
	event.preventDefault();
	$(this).hide();
	$(this).parent().find($('.add-job-form')).show();
}

var addJob = function(event){
	event.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'post',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		$(this).parent().parent().hide();
		$(this).parent().parent().parent().find($('.add-job-button')).show()
	})
}
