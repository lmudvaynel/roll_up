$(document).ready(function(){

	$(".gallery_1 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_2 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_3 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_4 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_5 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_6 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_7 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	


	var maxHeightD = Math.max.apply(null, $("div.stand_descr").map(function (){
    return $(this).height();
	}).get());

	$(".stand_descr").each(function() {
		$(this).css({'height':maxHeightD});
	});

	var maxHeight = Math.max.apply(null, $("div.stand_info").map(function (){
    return $(this).height();
	}).get());

	$(".block").each(function() {
		$(this).css({'height':maxHeight+maxHeightD+320});
	});

	$(".mores").mouseenter(function(){
			$(this).find(".wrap_more").find(".more").addClass("current_stand");
			}).mouseleave(function(){
				$(".wrap_more").find(".more").removeClass("current_stand");
			}
		);
	
	$(".column").mouseenter(function(){
		
		$(this).addClass("current");
		$(this).find(".stand_name").addClass("current_name");
		$(this).stop().animate({
			},500);
		$(this).find(".stand_name").stop().animate({
			backgroundColor: "#cb272e",
			color: "#fff",
			},500);
			
	}).mouseleave(function(){
		$(this).removeClass("current");
		$(this).find(".stand_name").removeClass("current_name");
		$(this).stop().animate({
		},500);
		if ($(this).hasClass("no_border") ) {
			$(this).stop().animate({
		}, 500)};
		$(this).find(".stand_name").stop().animate({
			backgroundColor: "#fff",
			color: "#949597",
		},500);
	});

});

