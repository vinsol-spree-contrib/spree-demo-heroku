function RemoveCartLink(data) {
  this.cartIcon = data.cartIcon.find($('a'));
}

RemoveCartLink.prototype.init = function() {
  this.cartIcon.attr('href', 'javascript:void(0)');
};

$(document).ready(function () {
  var data = {
    cartIcon: $("div[data-target='#cart-modal']")
  },
    removeCartLinkObject = new RemoveCartLink(data);
    removeCartLinkObject.init();
});
