if ($('body.jobs.index').length) {

	// select all the checkboxes on the page and check their status
	//Hide the unchecked and show the checked
	//if none are checked show all jobs
	var showChecked = function(){
		$(".jobs").hide();
		checkbox = $('input[type=checkbox]')
		if ($( "input:checked" ).length !== 0){
					$(".jobs").hide();
					var checkboxes = $("input[type=checkbox]:checked")
					var classes = checkboxes.map(function(i, checkbox) {
						return checkbox.name
					}).get();
					$('.'+classes.join(',.')).show();
		} else {
			for (var i = 0; i < checkbox.length; i++){
				$('.'+checkbox[i].name).show()
			}
		}
	}	

	//rendering the data list to the page
	var renderView = function(dataList){
		$('#listing-container').text('')
		var template = $('#template').html()
		var render = Mustache.render(template, dataList)
		$('#listing-container').append(render)
	}


	renderView(data)

	//When a checkbox is changed, the page updates
	$("input[type=checkbox]").on('change',function(event){
		showChecked()
	});
}

