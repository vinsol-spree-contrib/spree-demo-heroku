var MobileViews = function () {}

MobileViews.prototype.init = function () {
  this.showMobileMenu();
  this.hideMobileMenu();
  this.mobileSearch();
  this.mobileSideBarAccordions();
}

MobileViews.prototype.showMobileMenu = function () {
  var $menuLink = $('.header-mobile-menu'),
      $menuDropDown = $('.header-mobile-menu-dropdown');

  $menuLink.on('click', function () {
    $menuDropDown.addClass('show');
  });
}

MobileViews.prototype.hideMobileMenu = function () {
  var $closeLink = $('.header-mobile-menu-close-link'),
      $menuDropDown = $('.header-mobile-menu-dropdown');

  $closeLink.on('click', function () {
    $menuDropDown.removeClass('show');
  });
}

MobileViews.prototype.mobileSearch = function () {
  var $mobileSearch = $('.mobile-search-icon'),
      $searchBlock = $('.mobile-header-search');

  $mobileSearch.on('click', function () {
    var $this = $(this);

    $this.toggleClass('selected');
    $searchBlock.toggleClass('show');
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
