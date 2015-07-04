// select all the checkboxes on the page and check their status
//Hide the unchecked and show the checked
//if none are checked show all jobs
var showChecked = function(){
	checkbox = $('input[type=checkbox]')
	if ($( "input:checked" ).length !== 0){
			$(".tags").hide();
			var checkboxes = $("input[type=checkbox]:checked")
			var classes = checkboxes.map(function(i, checkbox) {
			return checkbox.name
			}).get();
				$('.'+classes.join(',.')).show();
	} else {
			$(".tags").show();
	}
}

//rendering the job list to the page
var renderData = function(dataList){
	$('#listings').text('');
	var template = $('#template').html()
	var render = Mustache.render(template, dataList)
	$('#listings').append(render)
  $('.truncate').succinct({ size: 150 });

}

if (typeof data !== 'undefined'){
		renderData(data)
	}

//When a checkbox is changed, the page updates
$("input[type=checkbox]").on('change',function(event){
	showSkill = event.target.value
	$.ajax({
		url : "/skills/"+showSkill,
		type: 'PATCH',
	}).done(console.log('sent!'))
	showChecked()
});

