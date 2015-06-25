// Event Handlers

$(document).ready(function() {
	$('.jobDescPreview a').on("click", moreJobDesc)
	$('.jobDescAll a').on("click", lessJobDesc)
})


// Show Employer Profile - more /less description
var moreJobDesc = function(event){
	event.preventDefault()
	console.log(event.siblingElement)
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).next('.jobDescAll').removeClass("hidden");
}

var lessJobDesc = function(event){
	event.preventDefault()
	console.log(event.siblingElement)
	$(event.target.parentElement).addClass("hidden");
	$(event.target.parentElement).prev('.jobDescPreview').removeClass("hidden");
}
