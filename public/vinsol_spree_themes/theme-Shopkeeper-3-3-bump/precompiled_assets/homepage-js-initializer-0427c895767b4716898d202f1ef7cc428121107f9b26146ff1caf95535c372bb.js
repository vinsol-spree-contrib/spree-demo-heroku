// all javascript files related to themes should be require in this manifest.


$(document).on('ready', function() {

  // Home Page Slider
  $(".homepage-slider").slick({
    infinite: true,
    autoplay: true,
    speed: 1000,
    slidesToShow: 1,
    centerMode: true,
    variableWidth: true
  });

  $('.banner-container').masonry({
    itemSelector: '.item'
  });
});
