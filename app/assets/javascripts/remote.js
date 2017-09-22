$(document).ready(function() {
	$('.remote-round').click(function() {
		var data = $(this).attr("value")
		$.post("command", {"command": data});
		});

	$('.remote-square').click(function() {
		var data = $(this).attr("value")
		$.post("command", {"command": data});
		});
	$('.remote-round-sm').click(function() {
		var data = $(this).attr("value")
		$.post("command", {"command": data});
		});
});