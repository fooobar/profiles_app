
$(document).ready(function() {
	$('.edit-button').on("click", showForm)
	$('.cancel-button').on("click", hideForm)
	$('.add-button').on("click", showAddForm)
	$('.this-delete-button').on("click", deleteButton)
})

var showForm = function(event){
	event.preventDefault();
	$(this).parent().parent().find($('.edit-form')).show();
	$(this).parent().hide();
}

var hideForm = function(event){
	event.preventDefault();
	$(this).parent().parent().siblings($('.user-info')).show();
	$(this).parent().parent().hide();
	$('.add-button').show();
}


var showAddForm = function(event){
	event.preventDefault();
	$(this).siblings($('.add-form')).show();
	$(this).hide();
}

var deleteButton = function(event){
	event.preventDefault();
	$.ajax({
		context: this,
		url: $(this).parent().attr('action'),
		type: 'delete',
		data: $(this).parent().serialize()
	}).done(function(data) {
		$(this).parent().parent().parent().remove()
	})
}



