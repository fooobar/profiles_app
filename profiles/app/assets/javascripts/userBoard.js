if ($('body.skills.index').length) {
// select all the checkboxes on the page and check their status
//Hide the unchecked and show the checked
//if none are checked show all jobs
var showChecked = function(){
	$(".user").hide();
	var checkboxes = $("input[type=checkbox]:checked")
	var classes = checkboxes.map(function(i, checkbox) {
		return checkbox.name
	}).get();
	$('.'+classes.join(',.')).show();
}	

//rendering the job list to the page
var renderUsers = function(userList){
	$('#listing-container-jeremy').text('')
	var template = $('#users-template').html()
	var render = Mustache.render(template, userList)
	$('#listing-container-jeremy').append(render)
}

renderUsers(users)

//When a checkbox is changed, the page updates
$("input[type=checkbox]").on('change',function(event){
	showChecked()
});
}