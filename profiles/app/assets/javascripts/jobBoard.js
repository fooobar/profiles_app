	// select all the checkboxes on the page and check their status
	//Hide the unchecked and show the checked
	//if none are checked show all jobs
	var showChecked = function(){
		checkbox = $('input[type=checkbox]')
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
