$(document).ready(function(){

	var fullHeight = $(window).height();
	if(fullHeight > 980) { $('.wrapper').css({'margin-top':(fullHeight-980)/2+'px'}); }
	else { $('.wrapper').css({'margin-top':'0px'});}
	$(window).resize(function() {
	var fullHeight = $(window).height();
		if(fullHeight > 980) { $('.wrapper').css({'margin-top':(fullHeight-980)/2+'px'}); }
		else { $('.wrapper').css({'margin-top':'0px'});}
	});

	$(".gallery_1 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_2 a[rel^='prettyPhoto']").prettyPhoto({slideshow:5000, autoplay_slideshow:true});
	$(".gallery_3 a[rel^='prettyPhoto']").prettyPhoto({slideshow:5000, autoplay_slideshow:true});
	$(".gallery_4 a[rel^='prettyPhoto']").prettyPhoto({slideshow:5000, autoplay_slideshow:true});



	$(".column").mouseenter(function(){
		$(this).addClass("current");
		$(this).find(".stand_name").addClass("current_name")
		$(this).stop().animate({
			},500);
		$(this).find(".stand_name").stop().animate({
			backgroundColor: "#cb272e",
			color: "#fff",
			},500);
			
	}).mouseleave(function(){
		$(this).removeClass("current")
		$(this).stop().animate({
		},500);
		if ($(this).hasClass("no_border") ) {
			$(this).stop().animate({
		}, 500)};
		$(this).find(".stand_name").stop().animate({
			backgroundColor: "#fff",
			color: "#949597",
		},500, function() {
			$(this).find(".stand_name").removeClass("current_name");
		});
	});
});