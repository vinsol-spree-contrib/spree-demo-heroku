// all javascript files related to themes should be require in this manifest.
//= require jquery_zoom_min

$( document ).ready(function() {
  $( ".number_field_tag" ).spinner({
    min: 1
  });
  $('#product_zoom').zoom();
  $('li.tmb-all > a').on('click', function(){
    $('#product_zoom').zoom();
  })
});
