$(document).ready(function(){
  $(".menu_element").mouseenter(function(){
    $(this).find(".stand_name").addClass("current_name")
    $(this).find(".stand_name").stop().animate({
      backgroundColor: "#cb272e",
      color: "#fff",
      },500);
      
  }).mouseleave(function(){
    $(this).find(".stand_name").removeClass("current_name")
    $(this).find(".stand_name").stop().animate({
      backgroundColor: "#fff",
      color: "#949597",
    },500);
  });
});