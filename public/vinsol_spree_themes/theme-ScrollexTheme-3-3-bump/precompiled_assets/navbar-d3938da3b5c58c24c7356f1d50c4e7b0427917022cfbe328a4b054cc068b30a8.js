$(document).ready(function () {
  var trigger = $('.hamburger'),
      overlay = $('.scrollex-overlay'),
     isClosed = false;

    trigger.click(function () {
      hamburger_cross();      
    });

    function hamburger_cross() {

      if (isClosed == true) {          
        overlay.hide();
        trigger.removeClass('is-open');
        trigger.addClass('is-closed');
        isClosed = false;
        $('body').removeClass('body-fixed');
      } else {   
        overlay.show();
        trigger.removeClass('is-closed');
        trigger.addClass('is-open');
        isClosed = true;
        $('body').addClass('body-fixed');
      }
  }
  
  $('[data-toggle="offcanvas"]').click(function () {
        $('#scrollex-menu-wrapper').toggleClass('toggled');
  });  
});
