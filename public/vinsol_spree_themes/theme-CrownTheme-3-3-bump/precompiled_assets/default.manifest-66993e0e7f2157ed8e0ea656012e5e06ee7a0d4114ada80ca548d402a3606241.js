// all javascript files related to themes should be require in this manifest.
jQuery(document).on('click', '.mega-dropdown', function(e) {
  e.stopPropagation()
})

$( document ).ready(function() {
  $(".table").wrap("<div class='table-responsive'></div>");

  $(".fsh-demo").owlCarousel({ 
    autoPlay: 3000, //Set AutoPlay to 3 seconds
    pagination:false,
    navigation:true,
    items : 3,
    itemsDesktop : [1199,3],
    itemsDesktopSmall : [991,2],
    itemsMobile: [767,1]
  });

});



$(window).scroll(function(){
  var sticky = $('.sticky'),
      scroll = $(window).scrollTop();

  if (scroll >= 100) sticky.addClass('fixed');
  else sticky.removeClass('fixed');
});

$(document).ready(function(){
	//var slider_h = $(window).height();
	//$('#sg-carousel').css('height', slider_h +"px");
});
/*----footer fixed on bottom when page is not full----*/
function autoHeight() {
   $('.container-helper ').css('min-height', 0);
   $('.container-helper ').css('min-height', (
     $(document).height() 
     - $('#spree-header').height() 
     - $('#spree-footer').height()
   ));
 }

 // onDocumentReady function bind
 $(document).ready(function() {
   autoHeight();
 });

 // onResize bind of the function
 $(window).resize(function() {
   autoHeight();
 });
