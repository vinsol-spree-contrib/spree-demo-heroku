// all javascript files related to themes should be require in this manifest.


$(document).on('ready', function() {

  // For Header Responsive
  $(".main_menu_toggle").click(function(){
    $(".sidebar").toggleClass("sidebar_open");
  });

  // All Responsive Tables
  $( ".table" ).wrap( "<div class='table-responsive'></div>" );

});
