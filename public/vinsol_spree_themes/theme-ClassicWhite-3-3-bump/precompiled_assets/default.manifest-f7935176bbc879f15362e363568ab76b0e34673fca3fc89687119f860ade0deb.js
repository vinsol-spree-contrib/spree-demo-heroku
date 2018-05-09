var MobileViews = function () {}

MobileViews.prototype.init = function () {
  this.showMobileMenu();
  this.hideMobileMenu();
  this.mobileSideBarAccordions();
}

MobileViews.prototype.showMobileMenu = function () {
  var $menuLink = $('.header-mobile-menu'),
      $menuDropDown = $('.header-mobile-nav-dropdown');

  $menuLink.on('click', function () {
    $menuDropDown.addClass('visible');
  });
}

MobileViews.prototype.hideMobileMenu = function () {
  var $closeLink = $('.header-mobile-dropdown-close'),
      $menuDropDown = $('.header-mobile-nav-dropdown');

  $closeLink.on('click', function () {
    $menuDropDown.removeClass('visible');
  });
}

MobileViews.prototype.mobileSideBarAccordions = function () {
  var $accordionLink = $('#sidebar .sidebar-title'),
      $accordionBlock = $('#sidebar .list-group');

  $accordionLink.on('click', function () {
    var $this = $(this);

    $this.next($accordionBlock).slideToggle();
    $this.find('.sidebar-accordion-link').toggleClass('selected');
  });
}

$(function () {
  var mobileViews = new MobileViews();
  mobileViews.init();
});
// all javascript files related to themes should be require in this manifest.

;
