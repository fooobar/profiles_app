if ($('body.jobs.index').length) {
// select all the checkboxes on the page and check their status
//Hide the unchecked and show the checked
//if none are checked show all jobs
var showChecked = function(){
	checkbox = $('input[type=checkbox]')
	if ($( "input:checked" ).length !== 0){
			$(".positions").hide();
			var checkboxes = $("input[type=checkbox]:checked")
			var classes = checkboxes.map(function(i, checkbox) {
			return checkbox.name
			}).get();
				$('.'+classes.join(',.')).show();
	} else {
			$(".positions").show();
	}
}

//rendering the job list to the page
var renderUsers = function(dataList){
	$('#listing-container').text('')
	var template = $('#jobs-template').html()
	var render = Mustache.render(template, dataList)
	$('#listing-container').append(render)
}

renderUsers(data)

//When a checkbox is changed, the page updates
$("input[type=checkbox]").on('change',function(event){
	showSkill = event.target.name
	showChecked()
});
}