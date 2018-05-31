var Sliders = function () {}

Sliders.prototype.init = function () {
  this.homeSlider();
  this.productThumbnailSlider();
}

Sliders.prototype.homeSlider = function () {
  $('.homepage-slider').bxSlider({
    auto: true
  });
}

Sliders.prototype.productThumbnailSlider = function () {
  $('#product-thumbnails').bxSlider({
    slideMargin: 5,
    infiniteLoop: false,
    hideControlOnEnd: true,
    autoReload: true,
    breaks: [{screen:0, slides:2, pager:false},{screen:460, slides:2},{screen:768, slides:4}]
  });
}

$(function () {
  var sliders = new Sliders();
  sliders.init();
});
