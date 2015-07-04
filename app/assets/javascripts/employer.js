$(document).ready(function() {
	$('.job-desc-preview a').on("click", moreJobDesc)
	$('.job-desc-all a').on("click", lessJobDesc)
	$('.users-jobs').on("click", '.update-button', updateJob)
	$('.users-jobs').on("click", '.create-button', addJob)
})


// Show Employer Profile job - more description
var moreJobDesc = function(event){
	event.preventDefault()
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).next('.job-desc-all').removeClass("hidden");
}

// Show Employer Profile job - less description
var lessJobDesc = function(event){
	event.preventDefault()
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).prev('.job-desc-preview').removeClass("hidden");
}


// Update Job

var updateJob = function(event){
	event.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'patch',
		data: $(this).parent().serialize()
	}).done(function(resp) {
		// update the text to reflect the changes
		$(this).parent().parent().parent().find($('.user-info')).find($('h3')).text(resp["job"]["title"])
		$(this).parent().parent().parent().find($('.user-info')).find($('.job-desc-preview')).text(resp["job"]["desc"])
		// adding skill
		if (resp["skill"]["name"] != undefined) {
			$(this).parent().parent().parent().find($('.user-info')).find($('.job-skills')).find($('ul')).append('<li>' + resp["skill"]["name"] + '</li>')
		}
		// hide form show text
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();				
	
	})	
}	


// Add Job

var addJob = function(event){
	event.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'post',
		// dataType: 'json',
		data: $(this).parent().serialize()
	}).done(function(data) {
		var template = $('#new-jobs-template').html();
		var output = Mustache.render(template, data);
		$('.user-new-jobs').prepend(output);
		// clear form values
		$(this).parent().find($('#job_title')).val('');
		$(this).parent().find($('#job_desc')).val('');
		$(this).parent().find($('#job_skills')).val('');
		// // hide/show form/edit
		$(this).parent().parent().siblings($('.user-info')).show();
		$(this).parent().parent().hide();

	})
}
