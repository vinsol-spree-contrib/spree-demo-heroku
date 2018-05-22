// all javascript files related to themes should be require in this manifest.
//= require number_input

$(function() {
  $.each($('.number_quantity_js'), function(index, element){
    new NumberInput($(element)).initialize();
  })
})

$(document).ready(function(){
    $("#sidebar_toggle_button").click(function(){
        $("#sidebar").slideToggle();
    });
});

