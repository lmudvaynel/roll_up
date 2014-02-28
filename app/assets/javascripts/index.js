$(document).ready(function(){

	$(".gallery_1 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_2 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_3 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_4 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_5 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});

	$(".column").mouseenter(function(){
		$(this).find(".more").removeClass('hidden')
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
		$(this).find(".more").addClass('hidden')
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