if ($('body.jobs.index').length) {

	// select all the checkboxes on the page and check their status
	//Hide the unchecked and show the checked
	//if none are checked show all jobs
	var showChecked = function(){
		checkboxes = $('input[type=checkbox]')
		if ($( "input:checked" ).length !== 0){
			for (var i = 0; i < checkbox.length; i++){
				if (checkbox[i].checked == false){
					$('.'+checkbox[i].name).hide()
				} else {
					$('.'+checkbox[i].name).show()
				}
			} 
		} else {
			for (var i = 0; i < checkbox.length; i++){
				$('.'+checkbox[i].name).show()
			}
		}
	}	

	//rendering the job list to the page
	var renderJobs = function(jobList){
		$('#listing-container').text('')
		var template = $('#jobs-template').html()
		var render = Mustache.render(template, jobList)
		$('#listing-container').append(render)
	}

	renderJobs(jobs);

	//When a checkbox is changed, the page updates
	$("input[type=checkbox]").on('change',function(event){
		showSkill = event.target.name
		showChecked()
	});

}