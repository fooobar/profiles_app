// Event Handlers
debugger
$(document).ready(function() {
	// show page
	$('.job-desc-preview a').on("click", moreJobDesc)
	$('.job-desc-all a').on("click", lessJobDesc)
	// edit page - jobs
	$('.profile-jobs').on("click", '.profile-job-edit-button', showUpdateJob)
	$('.profile-jobs').on("click", '.job-update-button', updateJob)
	// edit header - name and bio company
	$('.profile-header-edit-button').on("click", editOrgHeader)
	$('.header-update-button').on("click", updateOrgName)

	// add job
	$('.add-job-button').on("click", showAddJob)
	$('.add-job-form-button').on("click", addJob)
	//cancel button add job
	$('.add-job-cancel-button').on("click", hideAddJob)
	
	// delete - jobs
	$('.profile-jobs').on("click", '.profile-job-delete-button', deleteJob)

	// user preferences
	$('.prefs-update-button').on("click", updatePrefs)
	resizeDiv();
})

var resizeDiv = function(event){
	vph = $( document ).height();
	$('.profile-content').css({'height': vph});
}

// Show Employer Profile - more description
var moreJobDesc = function(event){
	event.preventDefault()
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).next('.job-desc-all').removeClass("hidden");
}

// Show Employer Profile - less description
var lessJobDesc = function(event){
	event.preventDefault()
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).prev('.job-desc-preview').removeClass("hidden");
}

// updating header

var editOrgHeader = function(event){
	event.preventDefault()
	$(this).parent().hide();
	$(this).parent().siblings('#profile-header-edit').show();
}


var updateOrgName = function(event){
	event.preventDefault();
	
	$.ajax({
		context: this,
		url: '/users/'+UserId,
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		console.log(resp)
		// update the text to reflect the changes
		$(this).parent().parent().parent().find($('.profile-info')).find($('h1')).text(resp["org_name"])
		$(this).parent().parent().parent().find($('.profile-info')).find($('h2')).text(resp["bio"])
		// hide form show text
		$(this).parent().parent().parent().find($('.profile-info')).show();
		$(this).parent().parent().parent().find($('#profile-header-edit')).hide();	
		$(this).parents().find($('body')).find($('.current-user-header')).text(resp["org_name"])
	})
}



// Edit Job

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
		$(this).parent().parent().parent().find($('.job-info')).find($('h3')).text(resp["job"]["title"])
		$(this).parent().parent().parent().find($('.job-info')).find($('.job-desc-preview')).text(resp["job"]["desc"])
		// adding skill
		$(this).parent().parent().parent().find($('.job-info')).find($('.job-skills')).find($('ul')).append('<li>' + resp["skill"]["name"] + '</li>')
		// hide form show text
		$(this).parent().parent().hide();
		$(this).parent().parent().siblings('.job-info').show();		
	
	})	
}	



// Create a Job
var showAddJob = function(event) {
	event.preventDefault();
	$(this).hide();
	$(this).parent().find($('.add-job-form')).show();
}

var hideAddJob = function(event) {
	event.preventDefault();
	$(this).parent().parent().find('.add-job-button').show()
	$(this).parent().hide();

}

var addJob = function(event){
	event.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'post',
		dataType: 'json',
		data: $(this).parent().serialize()
	}).done(function(data) {
		$(this).parent().parent().hide();
		$(this).parent().parent().parent().find($('.add-job-button')).show()
		var template = $('#new-job-template').html();
		var output = Mustache.render(template, data);
		$('.profile-new-job').prepend(output);
		// clear form values
		$(this).parent().find($('#job_title')).val('');
		$(this).parent().find($('#job_desc')).val('');
		$(this).parent().find($('#job_skills')).val('');

	})
}


// delete a job

var deleteJob = function(event){
	event.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'delete',
		data: $(this).parent().serialize()
	}).done(function(data) {
		$(this).parent().parent().remove()
	})
}


// update prefs

var updatePrefs = function(event){
	event.preventDefault()
	$.ajax({
		context: this,
		url: '/users/'+UserId,
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		console.log(resp)
		$(this).parents().find($('.profile-content')).css('background-image', 'url(' + resp["background"] + ')')
		$(this).parents().find($('.profile-content')).css('background-color', resp["color"] )		
	})
}