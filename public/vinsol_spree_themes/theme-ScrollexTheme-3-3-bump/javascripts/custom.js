$(function(){
  $(".header-search .btn-helper").click(function(){
    $("body").addClass( "search-header-active");
    $(".scrollex-overlay").addClass('search-active-overlay');
    $(".header-search").addClass('active');
  }) 
  $("body").on('click', '.search-active-overlay', function(){
    $("body").removeClass( "search-header-active");
    $(".scrollex-overlay").removeClass('search-active-overlay');
    $(".header-search").removeClass('active');     
  })
  $(".header-search .btn-close").click(function(){
    $(".header-search").removeClass('active');
    $("body").removeClass( "search-header-active");
  });

  $('.spinner').bootstrapNumber();
  $(function(){ 
  //auto hide spree header
    var scroll = $(document).scrollTop();
    var headerHeight = $('#spree-header', '#breadcrumbs').outerHeight();
    //console.log(headerHeight);
    $(window).scroll(function() {
      // scrolled is new position just obtained
      var scrolled = $(document).scrollTop();
      // optionally emulate non-fixed positioning behaviour
      if (scrolled > headerHeight){
        $('#spree-header').addClass('off-canvas');
      } else {
        $('#spree-header').removeClass('off-canvas');
      }
        if (scrolled > scroll){
             // scrolling down
         $('#spree-header').removeClass('fixed');
          } else {
          //scrolling up
          $('#spree-header').addClass('fixed');
        }       
      scroll = $(document).scrollTop(); 
    });
  });

  if(jQuery.support.touch){
    $('body').addClass('touch-enable')
  }else {
    $('body').addClass('touch-disable')
  }

  $(window).scroll(function () {
    if ($(this).scrollTop() >=50)  {
        $('#back-to-top').fadeIn();
    } else {
        $('#back-to-top').fadeOut();
    }

    if ($(this).scrollTop() >=50)  {
        $('.breadcrumbs-row').addClass('off-canvas');
        $('#sidebar').addClass('off-canvas');
    } else {
        $('.breadcrumbs-row').removeClass('off-canvas');
        $('#sidebar').removeClass('off-canvas');
    }
  }); 
  // scroll body tox on click
  $('#back-to-top').click(function () {
    $('#back-to-top').tooltip('hide');
    $('body,html').animate({
        scrollTop: 0
    }, 300);
    return false;                     
  });
  $('#back-to-top').tooltip('show');
})


