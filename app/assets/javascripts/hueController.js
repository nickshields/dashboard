//controller for functions relating to the philips hue
$(document).ready(function() {
	$('.hueButton').click(function() {
		var data = $(this).attr("value")
		$.post("light", {"command": data});
		});
});