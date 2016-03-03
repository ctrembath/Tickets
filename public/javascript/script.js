$(document).ready(function() {
	
	document.getElementById("bigImage").src = $('.flickImg').first().attr('src');

	$('.flickImg').click(function(){
		  var thumbnail= $(this).attr('src');
		  document.getElementById("bigImage").src = thumbnail;
	});
});