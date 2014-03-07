$(document).ready(function(){

	$(".gallery_1 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_2 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_3 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_4 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_5 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_6 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	$(".gallery_7 a[rel^='prettyPhoto']").prettyPhoto({theme: 'facebook', /* light_rounded / dark_rounded / light_square / dark_square / facebook */slideshow:5000, autoplay_slideshow:true});
	
	var $img = $('.gallery_6 img');
	$img.load(function(){
		var imgHeight = $(this).height();
		var imgWidth = $(this).width();
		if (imgHeight > imgWidth) {
			$(this).css({'width':'100%'});
			var imgHeight = $(this).height();
			$(this).css({'margin-top':-((imgHeight-187)/2)});
		}
		else {
			$(this).css({'height':'100%'});
			var imgWidth = $(this).width();
			$(this).css({'margin-left':-((imgWidth-187)/2)});
		}
	
	});

	var $img = $('.gallery_7 img');
	$img.load(function(){
		var imgHeight = $(this).height();
		var imgWidth = $(this).width();
		if (imgHeight > imgWidth) {
			$(this).css({'width':'100%'});
			var imgHeight = $(this).height();
			$(this).css({'margin-top':-((imgHeight-187)/2)});
		}
		else {
			$(this).css({'height':'100%'});
			var imgWidth = $(this).width();
			$(this).css({'margin-left':-((imgWidth-187)/2)});
		}
	});
	
	$(".column").mouseenter(function(){
		$(this).find(".mores").mouseenter(function(){
			$(this).find(".wrap_more").find(".more").addClass("current_stand");
		}).mouseleave(function(){
			$(".wrap_more").find(".more").removeClass("current_stand");
		});
		
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

