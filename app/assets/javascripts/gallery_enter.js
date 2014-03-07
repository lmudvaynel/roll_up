$(document).ready(function(){
	$('li').mouseenter(function(){
		$(this).stop().animate({
			borderColor: "#fff",
			},100);
			
	}).mouseleave(function(){
		$(this).stop().animate({
			borderColor: "#000",
		},100);
	});
});